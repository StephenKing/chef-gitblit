#
# Cookbook Name:: gitblit
# Recipe:: default
#
# Copyright 2012, TYPO3 Association
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

directory "/tmp/webapps/gitblit" do
  owner "tomcat6"
  group "tomcat6"
  recursive true
end

application "gitblit" do
  path "/tmp/webapps/gitblit"
  owner "tomcat6"
  group "tomcat6"

#  repository "git://github.com/gitblit/gitblit.git"
#  revision "master"

  repository "http://gitblit.googlecode.com/files/gitblit-1.0.0.war"
  revision "be46d9bad598e658b5e48135ba1b19674d70447c511ff878286d388577618ba3"

  java_webapp
  
  tomcat
end