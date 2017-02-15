import datetime
from haystack import indexes
from list_movie.models import Detial

class MovieIndex(indexes.SearchIndex, indexes.Indexable):
    text = indexes.CharField(document=True, use_template=True)
    web_url = indexes.CharField(model_attr='web_url')
    movie_name = indexes.CharField(model_attr='movie_name')
    movie_date = indexes.CharField(model_attr='movie_date')

    def get_model(self):
        return Detial

    def index_queryset(self, using=None):
        return self.get_model().objects.all()