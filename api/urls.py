from .views import ProductViewSet, StockViewSet
from django.urls import path


urlpatterns = [
    path('stocks/', StockViewSet.as_view({
        'get': 'list',
        'post': 'create',

    })),
    path('stocks/<int:id>', StockViewSet.as_view({
        'get': 'list',
        'patch': 'partial_update',
        'delete': 'destroy',
    })),
    path('products/', ProductViewSet.as_view({
        'get': 'list',
        'post': 'create',
        'put': 'update',
        'patch': 'partial_update',
        'delete': 'destroy',
    }))
]

# from rest_framework.routers import DefaultRouter
#
#
# router = DefaultRouter()
# router.register('products', ProductViewSet)
# router.register('stocks', StockViewSet)
#
# urlpatterns = router.urls