FROM ruby:2.7-alpine

LABEL "com.github.actions.name"="Comment on PR"
LABEL "com.github.actions.description"="Leaves a comment on an open PR matching a push event."
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="blue"

RUN gem install octokit

ADD comment_on_pr.sh /comment_on_pr.sh
ENTRYPOINT ["/comment_on_pr.sh"]
