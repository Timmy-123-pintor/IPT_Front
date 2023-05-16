# from django.views.decorators.csrf import csrf_exempt
# from django.contrib.auth import authenticate, login
# from django.http import JsonResponse
# from rest_framework import status
# from rest_framework.response import Response

# @csrf_exempt

# def login(request):
#     if request.method == 'POST':
#         email = request.data.get('email')
#         password = request.data.get('password')
#         try:
#             user = User.objects.get(email=email)
#         except User.DoesNotExist:
#            return Response({'status': 'failed'}, status=status.HTTP_401_UNAUTHORIZED)
#         if user.check_password(password):
#             login(request, user)
#             return JsonResponse({'status': 'success'})
#         else:
#             return Response({'status': 'failed'}, status=status.HTTP_401_UNAUTHORIZED)

# def login(request):
#     if request.method == 'POST':
#         email = request.POST.get('email')
#         password = request.POST.get('password')
        
# user = authenticate(request, email=email, password=password)
#         if user is not None:
#             login(request, user)
#             return Response({'status': 'success'}, status=status.HTTP_200_OK)
#         else:
#             return Response({'status': 'failed'}, status=status.HTTP_401_UNAUTHORIZED)

from django.http import JsonResponse
from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.contrib.auth import authenticate, login
from django.views.decorators.csrf import csrf_exempt
from api.models import User

@csrf_exempt
@api_view(['POST'])
def login_view(request):
    email = request.data.get('email')
    password = request.data.get('password')

    # Check if user with given email exists
    try:
        user = User.objects.get(email=email)
    except User.DoesNotExist:
        return JsonResponse({'status': 'Email not found'}, status=400)

    # Authenticate user with given email and password
    user = authenticate(request, email=email, password=password)
    if user is not None:
        login(request, user)
        return JsonResponse({'status': 'Login successful'}, status=200)
    else:
        return JsonResponse({'status': 'Invalid password'}, status=401)

# from django.http import JsonResponse
# from rest_framework.decorators import api_view
# from rest_framework.response import Response
# from django.contrib.auth import authenticate, login
# from django.views.decorators.csrf import csrf_exempt

# from api.models import User

# @csrf_exempt
# @api_view(['POST'])
# def login_view(request):
#     email = request.data.get('email')
#     password = request.data.get('password')

#     # Check if user with given email exists
#     try:
#         user = User.objects.get(email=email)
#     except User.DoesNotExist:
#         return Response({'status': 'Email not found'}, status=400)

#     # Authenticate user with given email and password
#     user = authenticate(request, email=email, password=password)
#     if user is not None:
#         login(request, user)
#         return Response({'status': 'Authenticated'})

#     return Response({'status': 'Invalid credentials'}, status=401)
