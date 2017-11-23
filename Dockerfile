FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGhlbGxvLXRlc3QtYXBiCmRlc2NyaXB0aW9uOiBkZXBsb3lzIGhl\
bGxvLXRlc3Qgd2ViIGFwcGxpY2F0aW9uCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwK\
bWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6IEhlbGxvIFRlc3QgKEFQQikKICBsb25nRGVzY3JpcHRp\
b246IEEgc2FtcGxlIEFQQiB3aGljaCBkZXBsb3lzIGEgY29udGFpbmVyaXplZCBIZWxsbyBXb3Js\
ZCB3ZWIgYXBwbGljYXRpb24gY2FuIGZhaWxzIG9uIFByb3Zpc2lvbi9EZXByb3Zpc2lvbgogIGRl\
cGVuZGVuY2llczogWydkb2NrZXIuaW8vYW5zaWJsZXBsYXlib29rYnVuZGxlL2hlbGxvLXdvcmxk\
OmxhdGVzdCddCiAgcHJvdmlkZXJEaXNwbGF5TmFtZTogIlJlZCBIYXQsIEluYy4iCnBsYW5zOgog\
IC0gbmFtZTogZmFpbHByb3Zpc2lvbgogICAgZGVzY3JpcHRpb246IGNhbiBmYWlsIG9uIHByb3Zp\
c2lvbgogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6CiAgICAgIGRpc3BsYXlOYW1lOiBmYWls\
cHJvdmlzaW9uCiAgICAgIGxvbmdEZXNjcmlwdGlvbjogVGhpcyBwbGFuIGRlcGxveXMgYSBQeXRo\
b24gd2ViIGFwcGxpY2F0aW9uIGRpc3BsYXlpbmcgSGVsbG8gV29ybGQKICAgICAgY29zdDogJDAu\
MDAKICAgIHBhcmFtZXRlcnM6IFtdCiAgLSBuYW1lOiBmYWlsZGVwcm92aXNpb24KICAgIGRlc2Ny\
aXB0aW9uOiBjYW4gZmFpbCBvbiBkZXByb3Zpc2lvbgogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRh\
dGE6CiAgICAgIGRpc3BsYXlOYW1lOiBmYWlsZGVwcm92aXNpb24KICAgICAgbG9uZ0Rlc2NyaXB0\
aW9uOiBUaGlzIHBsYW4gZGVwbG95cyBhIFB5dGhvbiB3ZWIgYXBwbGljYXRpb24gZGlzcGxheWlu\
ZyBIZWxsbyBXb3JsZAogICAgICBjb3N0OiAkMC4wMAogICAgcGFyYW1ldGVyczogW10K"

ADD playbooks /opt/apb/actions
ADD roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}

USER apb
