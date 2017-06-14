var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http) {

	$scope.refreshCart = function() {
		$http.get("/emusicstore/rest/cart/" + $scope.cartId).then(
				function(data) {

					$scope.cart = data;

					console.log("data set to cart");
					
					
					$scope.calculateGrandTotal = function() {
						var grandTotal = 0;

						for (var i = 0; i < $scope.cart.cartItems.length; i++) {
							grandTotal += $scope.cart.cartItems[i].totalPrice;
						}

						return grandTotal;
					};
				});
		
		
		
	};

	$scope.clearCart = function() {
		$http['delete']("/emusicstore/rest/cart/" + $scope.cartId).then(
				$scope.refreshCart());
	};

	$scope.initCartId = function(cartId) {
		$scope.cartId = cartId;
		$scope.refreshCart();

	};

	$scope.addToCart = function(productId) {
		$http.put('/emusicstore/rest/cart/add/' + productId).then(function() {
			alert("Product successfully added to the cart.");
		});
	};

	$scope.removeFromCart = function(productId) {
		$http.put("/emusicstore/rest/cart/remove/" + productId).then(
				function(data) {
					$scope.refreshCart();
				});
	};

	



});