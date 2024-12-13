@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Course Projection Entity'
@Metadata.ignorePropagatedAnnotations: false

@Search.searchable: true // 글로벌 서치를 활성화 시킨다.

@Metadata.allowExtensions: true 
define root view entity ZC_A1218_COURSE 
as projection on zi_a1218_course
{
    key CourseUuid,
    CourseId,
    @Search.defaultSearchElement: true
    CourseName,
    CourseLength,
    @Consumption.valueHelpDefinition: 
    [{ entity: { name: 'ZA1218_Country_VH' , element: 'Country'} }]
    @Search.defaultSearchElement: true
    Country, // search help 달기
    Price,
    @Consumption.valueHelpDefinition: 
    [{ entity: { name: 'ZA1218_Currency_VH' , element: 'Currency'} }]
    CurrencyCode,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _CountryVH,
    _CurrencyVH,
    _Schedule : redirected to composition child ZC_A1218_SCHEDULE
}
