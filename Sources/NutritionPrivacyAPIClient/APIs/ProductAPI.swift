//
// ProductAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ProductAPI {

    /**
     Add a new product.
     
     - parameter product: (body) Create a new product in the database (optional)
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addProduct(product: Product? = nil) async throws {
        let requestBuilder = addProductWithRequestBuilder(product: product)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case .success:
                        continuation.resume(returning: ())
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     Add a new product.
     - POST /product
     - parameter product: (body) Create a new product in the database (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addProductWithRequestBuilder(product: Product? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/product"
        let localVariableURLString = NutritionPrivacyAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: product)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = NutritionPrivacyAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Returns all products as previews.
     
     - returns: String
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAllProducts() async throws -> String {
        let requestBuilder = getAllProductsWithRequestBuilder()
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     Returns all products as previews.
     - GET /productPreviews
     - returns: RequestBuilder<String> 
     */
    open class func getAllProductsWithRequestBuilder() -> RequestBuilder<String> {
        let localVariablePath = "/productPreviews"
        let localVariableURLString = NutritionPrivacyAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = NutritionPrivacyAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Finds a product by ID
     
     - parameter productID: (path) ID of product that needs to be fetched 
     - returns: Product
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getProductByID(productID: UUID) async throws -> Product {
        let requestBuilder = getProductByIDWithRequestBuilder(productID: productID)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     Finds a product by ID
     - GET /product/{productID}
     - Finds a product by ID. A ID is either a barcode or a UUID.
     - parameter productID: (path) ID of product that needs to be fetched 
     - returns: RequestBuilder<Product> 
     */
    open class func getProductByIDWithRequestBuilder(productID: UUID) -> RequestBuilder<Product> {
        var localVariablePath = "/product/{productID}"
        let productIDPreEscape = "\(APIHelper.mapValueToPathItem(productID))"
        let productIDPostEscape = productIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{productID}", with: productIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = NutritionPrivacyAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Product>.Type = NutritionPrivacyAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Finds products by text.
     
     - parameter text: (query) Text that gets checked via prefix against name or brand of the product. 
     - parameter page: (query) Page of the search results. (optional)
     - returns: ProductsSearchResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func searchByText(text: String, page: Int? = nil) async throws -> ProductsSearchResponse {
        let requestBuilder = searchByTextWithRequestBuilder(text: text, page: page)
        let requestTask = requestBuilder.requestTask
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestBuilder.execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: {
            requestTask.cancel()
        }
    }

    /**
     Finds products by text.
     - GET /product
     - Finds products which have either the passed text as prefix in their name or brand.
     - parameter text: (query) Text that gets checked via prefix against name or brand of the product. 
     - parameter page: (query) Page of the search results. (optional)
     - returns: RequestBuilder<ProductsSearchResponse> 
     */
    open class func searchByTextWithRequestBuilder(text: String, page: Int? = nil) -> RequestBuilder<ProductsSearchResponse> {
        let localVariablePath = "/product"
        let localVariableURLString = NutritionPrivacyAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "text": (wrappedValue: text.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProductsSearchResponse>.Type = NutritionPrivacyAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
