ARG RUBY_VERSION =3.0.0
FROM ruby:$RUBY_VERSION 

RUN apy-get update -qq && \
apy-get install -y build-essential libvips && \
apy-get clean && \
rm -rf /var/lib/apt/lists/* /user/share/doc/usr/share/man


WORKDIR /rails


ENV RAILS_LOG_TO_STDOUT="1" \
RAILS_SERVE_STATIC_FILES="true" \   
RAILS_ENV="production" \
BUNDLE_WITHOUT="development" 

COPY Gemfile Gemfile.log ./
RUN bundle install 
COPY . .
RUN bundle exec bootstrap precompile --gemfile app/ lib/
RUN SECRET_KEY_BASE_DUMMY=1 bundle exec rails assets:precompile



ENTRYPOINT ["/rails/bin/docker-entrypoint"]
EXPOSE 3000
CMD ["./bin/rails", "server"]
