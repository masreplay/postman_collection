// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostmanCollectionImpl _$$PostmanCollectionImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionImpl(
      info:
          PostmanCollectionInfo.fromJson(json['info'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>)
          .map((e) => PostmanCollectionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map(
              (e) => PostmanCollectionEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
      auth: json['auth'] == null
          ? null
          : PostmanCollectionAuth.fromJson(
              json['auth'] as Map<String, dynamic>),
      protocolProfileBehavior: json['protocolProfileBehavior'] == null
          ? null
          : PostmanCollectionProtocolProfileBehavior.fromJson(
              json['protocolProfileBehavior'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostmanCollectionImplToJson(
        _$PostmanCollectionImpl instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'item': instance.item.map((e) => e.toJson()).toList(),
      'event': instance.event?.map((e) => e.toJson()).toList(),
      'variable': instance.variable?.map((e) => e.toJson()).toList(),
      'auth': instance.auth?.toJson(),
      'protocolProfileBehavior': instance.protocolProfileBehavior?.toJson(),
    };

_$PostmanCollectionInfoImpl _$$PostmanCollectionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionInfoImpl(
      postmanId: json['_postman_id'] as String?,
      name: json['name'] as String,
      schema: json['schema'] as String,
      description: json['description'] == null
          ? null
          : PostmanCollectionDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      version: json['version'] == null
          ? null
          : PostmanCollectionVersion.fromJson(
              json['version'] as Map<String, dynamic>),
      exporterId: json['_exporter_id'] as String?,
      collectionLink: json['_collection_link'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionInfoImplToJson(
        _$PostmanCollectionInfoImpl instance) =>
    <String, dynamic>{
      '_postman_id': instance.postmanId,
      'name': instance.name,
      'schema': instance.schema,
      'description': instance.description?.toJson(),
      'version': instance.version?.toJson(),
      '_exporter_id': instance.exporterId,
      '_collection_link': instance.collectionLink,
    };

_$PostmanCollectionDescriptionObjectImpl
    _$$PostmanCollectionDescriptionObjectImplFromJson(
            Map<String, dynamic> json) =>
        _$PostmanCollectionDescriptionObjectImpl(
          content: json['content'] as String?,
          type: json['type'] as String?,
          version: json['version'],
        );

Map<String, dynamic> _$$PostmanCollectionDescriptionObjectImplToJson(
        _$PostmanCollectionDescriptionObjectImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': instance.type,
      'version': instance.version,
    };

_$PostmanCollectionDescriptionTextImpl
    _$$PostmanCollectionDescriptionTextImplFromJson(
            Map<String, dynamic> json) =>
        _$PostmanCollectionDescriptionTextImpl(
          json['content'] as String,
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$PostmanCollectionDescriptionTextImplToJson(
        _$PostmanCollectionDescriptionTextImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': instance.$type,
    };

_$PostmanCollectionDescriptionNullImpl
    _$$PostmanCollectionDescriptionNullImplFromJson(
            Map<String, dynamic> json) =>
        _$PostmanCollectionDescriptionNullImpl(
          $type: json['type'] as String?,
        );

Map<String, dynamic> _$$PostmanCollectionDescriptionNullImplToJson(
        _$PostmanCollectionDescriptionNullImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$PostmanCollectionVersionImpl _$$PostmanCollectionVersionImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionVersionImpl(
      major: (json['major'] as num).toInt(),
      minor: (json['minor'] as num).toInt(),
      patch: (json['patch'] as num).toInt(),
      identifier: json['identifier'] as String?,
      meta: json['meta'],
    );

Map<String, dynamic> _$$PostmanCollectionVersionImplToJson(
        _$PostmanCollectionVersionImpl instance) =>
    <String, dynamic>{
      'major': instance.major,
      'minor': instance.minor,
      'patch': instance.patch,
      'identifier': instance.identifier,
      'meta': instance.meta,
    };

_$PostmanCollectionItemImpl _$$PostmanCollectionItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionItemImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] == null
          ? null
          : PostmanCollectionDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map(
              (e) => PostmanCollectionEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      request: json['request'] == null
          ? null
          : PostmanCollectionRequest.fromJson(
              json['request'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      protocolProfileBehavior: json['protocolProfileBehavior'] == null
          ? null
          : PostmanCollectionProtocolProfileBehavior.fromJson(
              json['protocolProfileBehavior'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostmanCollectionItemImplToJson(
        _$PostmanCollectionItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description?.toJson(),
      'variable': instance.variable?.map((e) => e.toJson()).toList(),
      'event': instance.event?.map((e) => e.toJson()).toList(),
      'request': instance.request?.toJson(),
      'response': instance.response?.map((e) => e.toJson()).toList(),
      'protocolProfileBehavior': instance.protocolProfileBehavior?.toJson(),
    };

_$PostmanCollectionAuthImpl _$$PostmanCollectionAuthImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionAuthImpl(
      type: $enumDecode(_$PostmanCollectionAuthTypeEnumMap, json['type']),
      noauth: (json['noauth'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      apikey: (json['apikey'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      awsv4: (json['awsv4'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      basic: (json['basic'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      bearer: (json['bearer'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      digest: (json['digest'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      edgegrid: (json['edgegrid'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      hawk: (json['hawk'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      ntlm: (json['ntlm'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      oauth1: (json['oauth1'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      oauth2: (json['oauth2'] as List<dynamic>?)
          ?.map((e) => PostmanCollectionAuthAttribute.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostmanCollectionAuthImplToJson(
        _$PostmanCollectionAuthImpl instance) =>
    <String, dynamic>{
      'type': _$PostmanCollectionAuthTypeEnumMap[instance.type]!,
      'noauth': instance.noauth?.map((e) => e.toJson()).toList(),
      'apikey': instance.apikey?.map((e) => e.toJson()).toList(),
      'awsv4': instance.awsv4?.map((e) => e.toJson()).toList(),
      'basic': instance.basic?.map((e) => e.toJson()).toList(),
      'bearer': instance.bearer?.map((e) => e.toJson()).toList(),
      'digest': instance.digest?.map((e) => e.toJson()).toList(),
      'edgegrid': instance.edgegrid?.map((e) => e.toJson()).toList(),
      'hawk': instance.hawk?.map((e) => e.toJson()).toList(),
      'ntlm': instance.ntlm?.map((e) => e.toJson()).toList(),
      'oauth1': instance.oauth1?.map((e) => e.toJson()).toList(),
      'oauth2': instance.oauth2?.map((e) => e.toJson()).toList(),
    };

const _$PostmanCollectionAuthTypeEnumMap = {
  PostmanCollectionAuthType.apikey: 'apikey',
  PostmanCollectionAuthType.awsv4: 'awsv4',
  PostmanCollectionAuthType.basic: 'basic',
  PostmanCollectionAuthType.bearer: 'bearer',
  PostmanCollectionAuthType.digest: 'digest',
  PostmanCollectionAuthType.edgegrid: 'edgegrid',
  PostmanCollectionAuthType.hawk: 'hawk',
  PostmanCollectionAuthType.noauth: 'noauth',
  PostmanCollectionAuthType.oauth1: 'oauth1',
  PostmanCollectionAuthType.oauth2: 'oauth2',
  PostmanCollectionAuthType.ntlm: 'ntlm',
};

_$PostmanCollectionAuthAttributeImpl
    _$$PostmanCollectionAuthAttributeImplFromJson(Map<String, dynamic> json) =>
        _$PostmanCollectionAuthAttributeImpl(
          key: json['key'] as String,
          value: json['value'],
          type: json['type'] as String?,
        );

Map<String, dynamic> _$$PostmanCollectionAuthAttributeImplToJson(
        _$PostmanCollectionAuthAttributeImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'type': instance.type,
    };

_$PostmanCollectionProtocolProfileBehaviorImpl
    _$$PostmanCollectionProtocolProfileBehaviorImplFromJson(
            Map<String, dynamic> json) =>
        _$PostmanCollectionProtocolProfileBehaviorImpl();

Map<String, dynamic> _$$PostmanCollectionProtocolProfileBehaviorImplToJson(
        _$PostmanCollectionProtocolProfileBehaviorImpl instance) =>
    <String, dynamic>{};

_$PostmanCollectionRequestImpl _$$PostmanCollectionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionRequestImpl(
      method: json['method'] as String,
      url: json['url'] == null
          ? null
          : PostmanCollectionUrl.fromJson(json['url'] as Map<String, dynamic>),
      auth: json['auth'] == null
          ? null
          : PostmanCollectionAuth.fromJson(
              json['auth'] as Map<String, dynamic>),
      proxy: json['proxy'] == null
          ? null
          : PostmanCollectionProxyConfig.fromJson(
              json['proxy'] as Map<String, dynamic>),
      certificate: json['certificate'] == null
          ? null
          : PostmanCollectionCertificate.fromJson(
              json['certificate'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : PostmanCollectionDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      header: (json['header'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionHeader.fromJson(e as Map<String, dynamic>))
          .toList(),
      body: json['body'],
    );

Map<String, dynamic> _$$PostmanCollectionRequestImplToJson(
        _$PostmanCollectionRequestImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'url': instance.url?.toJson(),
      'auth': instance.auth?.toJson(),
      'proxy': instance.proxy?.toJson(),
      'certificate': instance.certificate?.toJson(),
      'description': instance.description?.toJson(),
      'header': instance.header?.map((e) => e.toJson()).toList(),
      'body': instance.body,
    };

_$PostmanCollectionUrlImpl _$$PostmanCollectionUrlImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionUrlImpl(
      raw: json['raw'] as String?,
      protocol: json['protocol'] as String?,
      host: json['host'],
      path: json['path'],
      port: json['port'] as String?,
      query: (json['query'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionQueryParam.fromJson(e as Map<String, dynamic>))
          .toList(),
      hash: json['hash'] as String?,
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostmanCollectionUrlImplToJson(
        _$PostmanCollectionUrlImpl instance) =>
    <String, dynamic>{
      'raw': instance.raw,
      'protocol': instance.protocol,
      'host': instance.host,
      'path': instance.path,
      'port': instance.port,
      'query': instance.query?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'variable': instance.variable?.map((e) => e.toJson()).toList(),
    };

_$PostmanCollectionQueryParamImpl _$$PostmanCollectionQueryParamImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionQueryParamImpl(
      key: json['key'] as String?,
      value: json['value'] as String?,
      disabled: json['disabled'] as bool?,
      description: json['description'] == null
          ? null
          : PostmanCollectionDescription.fromJson(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostmanCollectionQueryParamImplToJson(
        _$PostmanCollectionQueryParamImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'disabled': instance.disabled,
      'description': instance.description?.toJson(),
    };

_$PostmanCollectionVariableImpl _$$PostmanCollectionVariableImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionVariableImpl(
      id: json['id'] as String?,
      key: json['key'] as String?,
      value: json['value'],
      type: $enumDecodeNullable(
          _$PostmanCollectionVariableTypeEnumMap, json['type']),
      name: json['name'] as String?,
      description: json['description'] == null
          ? null
          : PostmanCollectionDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      system: json['system'] as bool?,
      disabled: json['disabled'] as bool?,
    );

Map<String, dynamic> _$$PostmanCollectionVariableImplToJson(
        _$PostmanCollectionVariableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
      'type': _$PostmanCollectionVariableTypeEnumMap[instance.type],
      'name': instance.name,
      'description': instance.description?.toJson(),
      'system': instance.system,
      'disabled': instance.disabled,
    };

const _$PostmanCollectionVariableTypeEnumMap = {
  PostmanCollectionVariableType.string: 'string',
  PostmanCollectionVariableType.boolean: 'boolean',
  PostmanCollectionVariableType.any: 'any',
  PostmanCollectionVariableType.number: 'number',
};

_$PostmanCollectionEventImpl _$$PostmanCollectionEventImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionEventImpl(
      id: json['id'] as String?,
      listen: json['listen'] as String,
      script: json['script'] == null
          ? null
          : PostmanCollectionScript.fromJson(
              json['script'] as Map<String, dynamic>),
      disabled: json['disabled'] as bool?,
    );

Map<String, dynamic> _$$PostmanCollectionEventImplToJson(
        _$PostmanCollectionEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listen': instance.listen,
      'script': instance.script?.toJson(),
      'disabled': instance.disabled,
    };

_$PostmanCollectionScriptImpl _$$PostmanCollectionScriptImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionScriptImpl(
      id: json['id'] as String?,
      type: json['type'] as String?,
      exec: json['exec'],
      src: json['src'] == null
          ? null
          : PostmanCollectionUrl.fromJson(json['src'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionScriptImplToJson(
        _$PostmanCollectionScriptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'exec': instance.exec,
      'src': instance.src?.toJson(),
      'name': instance.name,
    };

_$PostmanCollectionResponseImpl _$$PostmanCollectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionResponseImpl(
      id: json['id'] as String?,
      originalPostmanCollectionRequest:
          json['originalPostmanCollectionRequest'] == null
              ? null
              : PostmanCollectionRequest.fromJson(
                  json['originalPostmanCollectionRequest']
                      as Map<String, dynamic>),
      responseTime: json['responseTime'],
      timings: json['timings'],
      header: json['header'],
      cookie: (json['cookie'] as List<dynamic>?)
          ?.map((e) =>
              PostmanCollectionCookie.fromJson(e as Map<String, dynamic>))
          .toList(),
      body: json['body'] as String?,
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PostmanCollectionResponseImplToJson(
        _$PostmanCollectionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originalPostmanCollectionRequest':
          instance.originalPostmanCollectionRequest?.toJson(),
      'responseTime': instance.responseTime,
      'timings': instance.timings,
      'header': instance.header,
      'cookie': instance.cookie?.map((e) => e.toJson()).toList(),
      'body': instance.body,
      'status': instance.status,
      'code': instance.code,
    };

_$PostmanCollectionCookieImpl _$$PostmanCollectionCookieImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionCookieImpl(
      domain: json['domain'] as String,
      expires: json['expires'],
      maxAge: json['maxAge'] as String?,
      hostOnly: json['hostOnly'] as bool?,
      httpOnly: json['httpOnly'] as bool?,
      name: json['name'] as String?,
      path: json['path'] as String?,
      secure: json['secure'] as bool?,
      session: json['session'] as bool?,
      value: json['value'] as String?,
      extensions: json['extensions'],
    );

Map<String, dynamic> _$$PostmanCollectionCookieImplToJson(
        _$PostmanCollectionCookieImpl instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'expires': instance.expires,
      'maxAge': instance.maxAge,
      'hostOnly': instance.hostOnly,
      'httpOnly': instance.httpOnly,
      'name': instance.name,
      'path': instance.path,
      'secure': instance.secure,
      'session': instance.session,
      'value': instance.value,
      'extensions': instance.extensions,
    };

_$PostmanCollectionCertificateImpl _$$PostmanCollectionCertificateImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionCertificateImpl(
      name: json['name'] as String?,
      matches:
          (json['matches'] as List<dynamic>?)?.map((e) => e as String).toList(),
      key: json['key'] == null
          ? null
          : PostmanCollectionCertificateSrc.fromJson(
              json['key'] as Map<String, dynamic>),
      cert: json['cert'] == null
          ? null
          : PostmanCollectionCertificateSrc.fromJson(
              json['cert'] as Map<String, dynamic>),
      passphrase: json['passphrase'] as String?,
    );

Map<String, dynamic> _$$PostmanCollectionCertificateImplToJson(
        _$PostmanCollectionCertificateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'matches': instance.matches,
      'key': instance.key?.toJson(),
      'cert': instance.cert?.toJson(),
      'passphrase': instance.passphrase,
    };

_$PostmanCollectionCertificateSrcImpl
    _$$PostmanCollectionCertificateSrcImplFromJson(Map<String, dynamic> json) =>
        _$PostmanCollectionCertificateSrcImpl(
          src: json['src'] as String?,
        );

Map<String, dynamic> _$$PostmanCollectionCertificateSrcImplToJson(
        _$PostmanCollectionCertificateSrcImpl instance) =>
    <String, dynamic>{
      'src': instance.src,
    };

_$PostmanCollectionProxyConfigImpl _$$PostmanCollectionProxyConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionProxyConfigImpl(
      match: json['match'] as String?,
      host: json['host'] as String?,
      port: (json['port'] as num?)?.toInt(),
      tunnel: json['tunnel'] as bool?,
      disabled: json['disabled'] as bool?,
    );

Map<String, dynamic> _$$PostmanCollectionProxyConfigImplToJson(
        _$PostmanCollectionProxyConfigImpl instance) =>
    <String, dynamic>{
      'match': instance.match,
      'host': instance.host,
      'port': instance.port,
      'tunnel': instance.tunnel,
      'disabled': instance.disabled,
    };

_$PostmanCollectionHeaderImpl _$$PostmanCollectionHeaderImplFromJson(
        Map<String, dynamic> json) =>
    _$PostmanCollectionHeaderImpl(
      key: json['key'] as String,
      value: json['value'] as String,
      disabled: json['disabled'] as bool?,
      description: json['description'] == null
          ? null
          : PostmanCollectionDescription.fromJson(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostmanCollectionHeaderImplToJson(
        _$PostmanCollectionHeaderImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'disabled': instance.disabled,
      'description': instance.description?.toJson(),
    };
