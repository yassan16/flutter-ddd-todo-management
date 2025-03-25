// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoModel {
  int get id;
  int get user_id;
  String get title;
  String? get detail;
  String get category;
  String get status;
  DateTime get deadline;
  int get deadline_change_count;
  DateTime? get completion_date;
  DateTime get created_at;
  DateTime? get updated_at;
  DateTime? get deleted_at;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TodoModelCopyWith<TodoModel> get copyWith =>
      _$TodoModelCopyWithImpl<TodoModel>(this as TodoModel, _$identity);

  /// Serializes this TodoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.deadline_change_count, deadline_change_count) ||
                other.deadline_change_count == deadline_change_count) &&
            (identical(other.completion_date, completion_date) ||
                other.completion_date == completion_date) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user_id,
      title,
      detail,
      category,
      status,
      deadline,
      deadline_change_count,
      completion_date,
      created_at,
      updated_at,
      deleted_at);

  @override
  String toString() {
    return 'TodoModel(id: $id, user_id: $user_id, title: $title, detail: $detail, category: $category, status: $status, deadline: $deadline, deadline_change_count: $deadline_change_count, completion_date: $completion_date, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }
}

/// @nodoc
abstract mixin class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) _then) =
      _$TodoModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int user_id,
      String title,
      String? detail,
      String category,
      String status,
      DateTime deadline,
      int deadline_change_count,
      DateTime? completion_date,
      DateTime created_at,
      DateTime? updated_at,
      DateTime? deleted_at});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res> implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._self, this._then);

  final TodoModel _self;
  final $Res Function(TodoModel) _then;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? title = null,
    Object? detail = freezed,
    Object? category = null,
    Object? status = null,
    Object? deadline = null,
    Object? deadline_change_count = null,
    Object? completion_date = freezed,
    Object? created_at = null,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: freezed == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _self.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadline_change_count: null == deadline_change_count
          ? _self.deadline_change_count
          : deadline_change_count // ignore: cast_nullable_to_non_nullable
              as int,
      completion_date: freezed == completion_date
          ? _self.completion_date
          : completion_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: freezed == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted_at: freezed == deleted_at
          ? _self.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TodoModel extends TodoModel {
  const _TodoModel(
      {required this.id,
      required this.user_id,
      required this.title,
      this.detail,
      required this.category,
      required this.status,
      required this.deadline,
      required this.deadline_change_count,
      this.completion_date,
      required this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();
  factory _TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  @override
  final int id;
  @override
  final int user_id;
  @override
  final String title;
  @override
  final String? detail;
  @override
  final String category;
  @override
  final String status;
  @override
  final DateTime deadline;
  @override
  final int deadline_change_count;
  @override
  final DateTime? completion_date;
  @override
  final DateTime created_at;
  @override
  final DateTime? updated_at;
  @override
  final DateTime? deleted_at;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TodoModelCopyWith<_TodoModel> get copyWith =>
      __$TodoModelCopyWithImpl<_TodoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TodoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.deadline_change_count, deadline_change_count) ||
                other.deadline_change_count == deadline_change_count) &&
            (identical(other.completion_date, completion_date) ||
                other.completion_date == completion_date) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user_id,
      title,
      detail,
      category,
      status,
      deadline,
      deadline_change_count,
      completion_date,
      created_at,
      updated_at,
      deleted_at);

  @override
  String toString() {
    return 'TodoModel(id: $id, user_id: $user_id, title: $title, detail: $detail, category: $category, status: $status, deadline: $deadline, deadline_change_count: $deadline_change_count, completion_date: $completion_date, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }
}

/// @nodoc
abstract mixin class _$TodoModelCopyWith<$Res>
    implements $TodoModelCopyWith<$Res> {
  factory _$TodoModelCopyWith(
          _TodoModel value, $Res Function(_TodoModel) _then) =
      __$TodoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int user_id,
      String title,
      String? detail,
      String category,
      String status,
      DateTime deadline,
      int deadline_change_count,
      DateTime? completion_date,
      DateTime created_at,
      DateTime? updated_at,
      DateTime? deleted_at});
}

/// @nodoc
class __$TodoModelCopyWithImpl<$Res> implements _$TodoModelCopyWith<$Res> {
  __$TodoModelCopyWithImpl(this._self, this._then);

  final _TodoModel _self;
  final $Res Function(_TodoModel) _then;

  /// Create a copy of TodoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? title = null,
    Object? detail = freezed,
    Object? category = null,
    Object? status = null,
    Object? deadline = null,
    Object? deadline_change_count = null,
    Object? completion_date = freezed,
    Object? created_at = null,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_TodoModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: freezed == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _self.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadline_change_count: null == deadline_change_count
          ? _self.deadline_change_count
          : deadline_change_count // ignore: cast_nullable_to_non_nullable
              as int,
      completion_date: freezed == completion_date
          ? _self.completion_date
          : completion_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: freezed == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted_at: freezed == deleted_at
          ? _self.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
