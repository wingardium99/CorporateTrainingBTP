@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Schedule Projection Entity'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true 
define view entity ZC_A1218_SCHEDULE 
as projection on zi_a1218_schedule
{
    key ScheduleUuid,
    CourseBegin,
    CourseUuid,
    Location,
    Trainer,
    IsOnline,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Course : redirected to parent ZC_A1218_COURSE
}
