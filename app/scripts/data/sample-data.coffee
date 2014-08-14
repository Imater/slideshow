define ->
  SampleData = [
    title: 'Альбом'
    photos: [
      url: "/samples/2014-06-25 14.54.01.png"
    ,
      url: "/samples/2014-06-26 12.27.33.jpg"
    ,
      url: "/samples/2014-06-28 20.49.37.jpg"
    ,
      url: "/samples/2014-07-01 12.42.57.jpg"
    ,
      url: "/samples/2014-07-04 16.27.53.jpg"
    ,
      url: "/samples/2014-07-05 10.29.08.jpg"
    ,
      url: "/samples/2014-08-01 23.40.40.jpg"
    ]
  ,
    title: 'Второй альбом'
    photos: [
      url: "/samples/2874-8.jpg"
    ,
      url: "/samples/3054-11.jpg"
    ,
      url: "/samples/3084-11.jpg"
    ,
      url: "/samples/03598_rockymountain_3840x2400.jpg"
    ,
      url: "/samples/03602_shirataniunsuikyo_3840x2400.jpg"
    ,
      url: "/samples/03607_nocturne_2880x1800.jpg"
    ,
      url: "/samples/03610_frozen_2880x1800.jpg"
    ,
      url: "/samples/03611_desertdark_2880x1800.jpg"
    ,
      url: "/samples/1664444.jpg"
    ,
      url: "/samples/1821505.jpg"
    ,
      url: "/samples/funnyHitmananimationDespicable-Mem9minionscrossoversblack-backgroundred-background.jpg"
    ]
  ,
    title: 'Третий альбом'
    photos: [
      url: "/samples/03613_lonesometree_3840x2400.jpg"
    ,
      url: "/samples/03614_goldenpavilion_3840x2400.jpg"
    ,
      url: "/samples/03616_mistymorningatberowacreek_3840x2400.jpg"
    ,
      url: "/samples/03617_fortbraggsunset_3840x2400.jpg"
    ,
      url: "/samples/03618_openwide_3840x2400.jpg"
    ,
      url: "/samples/03622_walkonthebeach_3840x2400.jpg"
    ,
      url: "/samples/1634852.jpg"
    ,
      url: "/samples/1636199.jpg"
    ]
  ]


  SampleData = [
    {
      title: "Album1"
      slides: [
        {
          template: "onePhoto"
          images: [
            {
              url: "/samples/1821505.jpg"
              urlDraft: "/samples/draft/1821505.jpg"
            }
          ]
          showEffect: ["fadeIn"]
          showDuration: null
          hideEffect: []
        }
      ,
        {
          template: "twoPhoto"
          images: [
            {
              url: "/samples/1636199.jpg"
              urlDraft: "/samples/draft/1636199.jpg"
            }
          ,
            {
              url: "/samples/1634852.jpg"
              urlDraft: "/samples/draft/1634852.jpg"
            }
          ]
          showEffect: ["fadeIn", "moveLeft"]
          showDuration: 5000
          hideEffect: ["fadeOut", "moveLeft"]
        }
      ,
        {
          template: "twoPhoto"
          images: [
            {
              url: "/samples/3084-11.jpg"
              urlDraft: "/samples/draft/3084-11.jpg"
            }
          ,
            {
              url: "/samples/3054-11.jpg"
              urlDraft: "/samples/draft/3054-11.jpg"
            }
          ]
          showEffect: ["fadeIn", "moveLeft"]
          showDuration: 5000
          hideEffect: ["fadeOut", "moveLeft"]
        }
      ,
        {
          template: "onePhoto"
          images: [
            {
              url: "/samples/03613_lonesometree_3840x2400.jpg"
              urlDraft: "/samples/draft/03613_lonesometree_3840x2400.jpg"
            }
          ]
          showEffect: ["fadeIn"]
          showDuration: 5000
          hideEffect: []
        }
      ,
        {
          template: "twoPhoto"
          images: [
            {
              url: "/samples/2874-8.jpg"
              urlDraft: "/samples/draft/2874-8.jpg"
            }
          ,
            {
              url: "/samples/1664444.jpg"
              urlDraft: "/samples/draft/1664444.jpg"
            }
          ,
            {
              template: "twoPhoto"
              images: [
                {
                  url: "/samples/03616_mistymorningatberowacreek_3840x2400.jpg"
                  urlDraft: "/samples/draft/03616_mistymorningatberowacreek_3840x2400.jpg"
                }
              ,
                {
                  url: "/samples/03622_walkonthebeach_3840x2400.jpg"
                  urlDraft: "/samples/draft/03622_walkonthebeach_3840x2400.jpg"
                }
            }
          ]
          showEffect: ["fadeIn", "moveLeft"]
          showDuration: 5000
          hideEffect: ["fadeOut", "moveLeft"]
        }
      ]
    }
  ]

  return SampleData


  


