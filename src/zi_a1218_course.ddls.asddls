@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'course entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zi_a1218_course 
as select from zcourse_a1218
composition [0..*] of zi_a1218_schedule as _Schedule
association [1] to za1218_country_vh as _CountryVH
            on $projection.Country = _CountryVH.Country
association [1] to za1218_currency_vh as _CurrencyVH
            on $projection.CurrencyCode = _CurrencyVH.Currency
{
    key course_uuid as CourseUuid,
    course_id as CourseId,
    course_name as CourseName,
    course_length as CourseLength,
    country as Country,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    price as Price,
    currency_code as CurrencyCode,
    
    // Administrative Field(s)
    @Semantics.systemDateTime.lastChangedAt: true 
    last_changed_at as LastChangedAt, // rap 프레임 워크가 알아서 제어를 해라
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    _CountryVH,
    _CurrencyVH,
    _Schedule
 //   _association_name // Make association public
}
