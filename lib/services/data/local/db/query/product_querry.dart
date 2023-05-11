import 'package:cobiz/provider/product/model.dart';
import 'package:cobiz/services/data/local/db/gen/app_db.dart';
import 'package:cobiz/services/data/local/db/query/common_query.dart';
import 'package:cobiz/services/data/local/db/utils.dart';

import 'package:drift/drift.dart';

class ProductQuery extends AppDb {
  ProductQuery._() {
    AppDb.singleton();
  }

  static ProductQuery singleton = ProductQuery._();

  insertOrUpdateGProduct({
    String? type,
    String? designation,
    String? description,
    String? unity,
    String? state,
    String? caracteristique,
    int? productId,
    int? enterpriseId,

    // for price

    double? maximum,
    double? minimun,
    double? purchace,
    int? priceId,

    // for stock
    double? quantity,

    // for image
    String? filePath,
  }) async {
    int? savedId = await insertOrUpdate(
      type: type,
      description: description,
      designation: designation,
      caracteristique: caracteristique,
      id: productId,
      enterpriseId: enterpriseId,
      unity: unity,
      state: state,
    );

    await addOrEditPrice(
      productId: savedId!,
      maximum: maximum,
      minimun: minimun,
      priceId: priceId,
      purchace: purchace,
    );

    if (productId == null) {
      if (type != "Service") {
        await inStock(productId: savedId, quantity: quantity!);
      }
      if (filePath != null && productId == null) {
        await insertImage(productId: savedId, file: filePath);
      }
    }
    // in the case of we want to edit a single product
    if (productId != null) getOnProduct(productId);

    getAllProducts;
  }

  Future<int?> insertOrUpdate({
    String? type,
    String? designation,
    String? description,
    String? unity,
    String? state,
    String? caracteristique,
    int? enterpriseId,
    int? id,
  }) async {
    ProductData? productData = await (select(product)
          ..where((p) => p.id.equals(id)))
        .getSingleOrNull();

    int? savedId = productData == null
        ? await into(product).insert(
            ProductCompanion(
              description: Value(description),
              designation: Value(designation!),
              caracteristic: Value(caracteristique),
              entrytype: Value(type!),
              producttype: Value(state),
              quantity: const Value(0),
              enterpriseId: Value(enterpriseId),
              version: Value(rowVerion()),
              unite: Value(unity!),
              createdAt: Value(DateTime.now()),
            ),
          )
        : await (update(product)..where((p) => p.id.equals(productData.id)))
            .write(
            ProductCompanion(
              producttype: Value(state ?? productData.producttype),
              description: Value(description ?? productData.description),
              designation: Value(designation ?? productData.designation),
              caracteristic:
                  Value(caracteristique ?? productData.caracteristic),
              unite: Value(unity ?? productData.unite),
              version: Value(rowVerion(productData.version)),
            ),
          );
    return savedId;
  }

  Future<int> addOrEditPrice({
    int? productId,
    double? maximum,
    double? minimun,
    double? purchace,
    int? priceId,
  }) async {
    PriceData? priceData = await (select(price)
          ..where((pr) => pr.id.equals(priceId)))
        .getSingleOrNull();
    return priceData == null
        ? await into(price).insert(
            PriceCompanion(
                productId: Value(productId),
                purchase: Value(purchace ?? .0),
                maximun: Value(maximum ?? .0),
                minimum: Value(minimun ?? .0),
                version: Value(
                  rowVerion(),
                ),
                createdAt: Value(
                  DateTime.now(),
                )),
          )
        : await (update(price)
              ..where(
                (pr) => pr.id.equals(priceId),
              ))
            .write(
            PriceCompanion(
              maximun: Value(maximum ?? priceData.maximun),
              minimum: Value(minimun ?? priceData.minimum),
              purchase: Value(purchace ?? priceData.purchase),
              version: Value(
                rowVerion(priceData.version),
              ),
            ),
          );
  }

  Future<int> inStock(
      {required int? productId, required double? quantity}) async {
    ProductData? productData = await (select(product)
          ..where(
            (p) => p.id.equals(productId),
          ))
        .getSingleOrNull();

    int? savedId =
        await (update(product)..where((p) => p.id.equals(productId))).write(
      ProductCompanion(
          quantity: Value(quantity),
          version: Value(
            rowVerion(productData!.version),
          )),
    );

    savedId = await into(productstatus).insert(
      ProductstatusCompanion(
        quantity: Value(quantity!),
        productId: Value(productId),
        createdAt: Value(DateTime.now()),
        version: Value(
          rowVerion(),
        ),
      ),
    );
    return savedId;
  }

  Future<Totalproductmodel> get totalNumberProduit async {
    final totalservice = await (select(product)
          ..where((tbl) => tbl.entrytype.equals('Service')))
        .get();

    final totalproduit = await (select(product)
          ..where((tbl) => tbl.entrytype.equals('Produit')))
        .get();

    final total = await (select(product)).get();

    return Totalproductmodel(
        totalproduit: totalproduit.length,
        totalservice: totalservice.length,
        total: total.length);
  }

  Future<int> insertImage(
      {required int productId, required String file}) async {
    CommonQuery commonQuery = CommonQuery.singleton;

    int? savedId = await commonQuery.insertImage(file: file);

    return into(productphoto).insert(
      ProductphotoCompanion(
        productId: Value(productId),
        imageId: Value(savedId),
        version: Value(
          rowVerion(),
        ),
      ),
    );
  }

  deleteImage({required imageId, required productImageId}) {
    (delete(productphoto)..where((p) => p.id.equals(productImageId)));
    (delete(fileEnterprise)..where((p) => p.id.equals(imageId)));
  }

  Stream<List<ProductModel>> getAllProducts(
      {bool? asc,
      bool? pricefilter,
      bool? entrytype,
      bool? recentornewer,
      String? keyword}) {
    final query = select(product).join([
      leftOuterJoin(
        price,
        price.productId.equalsExp(product.id),
      ),
      leftOuterJoin(
        productphoto,
        productphoto.productId.equalsExp(product.id),
      ),
    ]);
    //put keyword to search element
    if (keyword != null) {
      query.where(product.designation.like("%$keyword%") |
          product.caracteristic.equals(keyword) |
          product.unite.equals(keyword));
    }

    if (asc != null) {
      query.orderBy([
        (asc == true)
            ? OrderingTerm.asc(product.designation)
            : OrderingTerm.desc(product.designation)
      ]);
    }

    if (entrytype != null) {
      query.where(
          product.entrytype.equals(entrytype == false ? "Service" : "Produit"));
    }

    if (recentornewer != null) {
      query.orderBy([
        (recentornewer == false)
            ? OrderingTerm.desc(product.createdAt)
            : OrderingTerm.asc(product.createdAt)
      ]);
    }

    if (pricefilter != null) {
      query.orderBy([
        (pricefilter == false)
            ? OrderingTerm.desc(price.maximun)
            : OrderingTerm.asc(price.maximun),
      ]);
    }

    return query.watch().map((rows) {
      return rows.map((row) {
        return ProductModel(
          price: row.readTableOrNull(price),
          productInfo: row.readTableOrNull(product),

          // for this first version the image will be only one
          productImages: row.readTableOrNull(productphoto),
        );
      }).toList();
    });
  }

  Stream<ProductModel> getOnProduct(int productId) {
    final query =
        (select(product)..where(((p) => p.id.equals(productId)))).join([
      leftOuterJoin(price, price.productId.equalsExp(product.id)),
      leftOuterJoin(productphoto, productphoto.productId.equalsExp(product.id)),
      leftOuterJoin(
          productstatus, productstatus.productId.equalsExp(product.id)),
    ]);

    return query.watchSingle().map((row) {
      return ProductModel(
        price: row.readTableOrNull(price),
        productInfo: row.readTableOrNull(product),
        productstatut: row.readTableOrNull(productstatus),
        productImages: row.readTableOrNull(productphoto),
      );
    });
  }

  Stream<ProductImage> getProductImage(int productId) {
    final query = (select(productphoto)
          ..where((pp) => pp.productId.equals(productId)))
        .join([
      leftOuterJoin(
        fileEnterprise,
        fileEnterprise.id.equalsExp(productphoto.imageId),
      ),
    ]);

    return query.watchSingle().map((row) {
      return ProductImage(
        productImage: row.readTableOrNull(fileEnterprise),
        productphotoData: row.readTableOrNull(productphoto),
      );
    });
  }
}
