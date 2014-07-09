from django.db import models

# Create your models here.
class News(models.Model):
	title = models.CharField(max_length=100)
	text = models.CharField(max_length=2000)
	image = models.ImageField(upload_to="photos")
	publish_time = models.DateTimeField()

	def __str__(self):
		return self.title

		