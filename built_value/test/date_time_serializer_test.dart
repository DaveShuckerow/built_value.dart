// Copyright (c) 2017, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:built_value/serializer.dart';
import 'package:test/test.dart';

void main() {
  final serializers = new Serializers();

  group('DateTime with known specifiedType', () {
    final data = new DateTime.utc(1980);
    final serialized = data.millisecondsSinceEpoch;
    final specifiedType = const FullType(DateTime);

    test('can be serialized', () {
      expect(serializers.serialize(data, specifiedType: specifiedType),
          serialized);
    });

    test('can be deserialized', () {
      expect(serializers.deserialize(serialized, specifiedType: specifiedType),
          data);
    });

    test('serialize throws if not UTC', () {
      expect(() => serializers.serialize(new DateTime.now()), throws);
    });
  });

  group('DateTime with unknown specifiedType', () {
    final data = new DateTime.utc(1980);
    final serialized = ['DateTime', data.millisecondsSinceEpoch];
    final specifiedType = FullType.unspecified;

    test('can be serialized', () {
      expect(serializers.serialize(data, specifiedType: specifiedType),
          serialized);
    });

    test('can be deserialized', () {
      expect(serializers.deserialize(serialized, specifiedType: specifiedType),
          data);
    });
  });
}
