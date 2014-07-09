from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.shortcuts import render, get_object_or_404
from django.shortcuts import get_list_or_404
from django.http import HttpResponse
from django.template import RequestContext, loader
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse

# Create your views here.
def home(request):
	template = loader.get_template("main/base.html")
	if request.method == "GET":
		context = RequestContext(
				request,
			)
		return HttpResponse(template.render(context))