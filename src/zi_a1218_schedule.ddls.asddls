@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Schedule Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_a1218_schedule 
as select from zschedule_a1218
association to parent zi_a1218_course as _Course
            on $projection.CourseUuid = _Course.CourseUuid
{
    key schedule_uuid as ScheduleUuid,
    course_begin as CourseBegin,
    course_uuid as CourseUuid,
    location as Location,
    trainer as Trainer,
    is_online as IsOnline,
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt,
    
    _Course
}
