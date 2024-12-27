from django.shortcuts import render


def index(request):
    html_file = "app1/index.html"
    return render(request, html_file)
