// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => _TodoModel(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num).toInt(),
      title: json['title'] as String,
      detail: json['detail'] as String?,
      category: json['category'] as String,
      status: json['status'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
      deadline_change_count: (json['deadline_change_count'] as num).toInt(),
      completion_date: json['completion_date'] == null
          ? null
          : DateTime.parse(json['completion_date'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deleted_at: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$TodoModelToJson(_TodoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'title': instance.title,
      'detail': instance.detail,
      'category': instance.category,
      'status': instance.status,
      'deadline': instance.deadline.toIso8601String(),
      'deadline_change_count': instance.deadline_change_count,
      'completion_date': instance.completion_date?.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'deleted_at': instance.deleted_at?.toIso8601String(),
    };
