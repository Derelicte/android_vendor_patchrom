.class public Lcom/android/deskclock/TimezonePicker;
.super Ljava/lang/Object;
.source "TimezonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/TimezonePicker$TimezoneComparator;,
        Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    }
.end annotation


# static fields
.field private static mAddedOffsets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimezonesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/TimezonePicker$TimezoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimezonesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/deskclock/TimezonePicker$TimezoneItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/deskclock/TimezonePicker;->mAddedOffsets:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public static final getAllTimezones(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/TimezonePicker$TimezoneItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/TimezonePicker;->parseTimezonesFromXml(Landroid/content/Context;)V

    .line 69
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static final getNearTimezoneID(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "offset"

    .prologue
    .line 54
    sget-object v2, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/TimezonePicker;->parseTimezonesFromXml(Landroid/content/Context;)V

    .line 57
    :cond_1
    sget-object v2, Lcom/android/deskclock/TimezonePicker;->mTimezonesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    .line 58
    .local v1, item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    iget v2, v1, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mOffset:I

    if-ne v2, p1, :cond_2

    .line 59
    iget-object v2, v1, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mId:Ljava/lang/String;

    .line 62
    .end local v1           #item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getTimezoneByID(Landroid/content/Context;Ljava/lang/String;)Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    .locals 1
    .parameter "context"
    .parameter "timezoneID"

    .prologue
    .line 73
    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/TimezonePicker;->parseTimezonesFromXml(Landroid/content/Context;)V

    .line 76
    :cond_1
    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    return-object v0
.end method

.method public static final getTimezoneCityNameById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "tzId"

    .prologue
    .line 80
    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/TimezonePicker;->parseTimezonesFromXml(Landroid/content/Context;)V

    .line 83
    :cond_1
    invoke-static {p0, p1}, Lcom/android/deskclock/TimezonePicker;->isValidateTimezoneID(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    iget-object v0, v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mCity:Ljava/lang/String;

    .line 86
    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static final isValidateTimezoneID(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "timezoneID"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    .line 47
    :cond_0
    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/android/deskclock/TimezonePicker;->parseTimezonesFromXml(Landroid/content/Context;)V

    .line 50
    :cond_2
    sget-object v0, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final parseTimezonesFromXml(Landroid/content/Context;)V
    .locals 19
    .parameter "context"

    .prologue
    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 94
    .local v7, date:J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v18, 0x7f060003

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 95
    .local v17, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_0

    .line 97
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    .line 98
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v4, v0, :cond_8

    .line 99
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    .line 100
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_1

    .line 157
    .end local v17           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-void

    .line 103
    .restart local v17       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 152
    .end local v17           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v16

    .line 153
    .local v16, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "ZonePicker"

    const-string v18, "Ill-formatted timezones.xml file"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 105
    .end local v16           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v17       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v18, "timezone"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, id:Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, displayName:Ljava/lang/String;
    move-object v6, v3

    .line 109
    .local v6, city:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    const-string v4, "("

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v14, v4, 0x1

    .line 111
    .local v14, start:I
    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 112
    .local v9, end:I
    if-ltz v14, :cond_3

    if-ge v14, v9, :cond_3

    .line 113
    invoke-virtual {v6, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 117
    .end local v9           #end:I
    .end local v14           #start:I
    :cond_3
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 118
    .local v15, tz:Ljava/util/TimeZone;
    invoke-virtual {v15, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 119
    .local v5, offset:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 120
    .local v13, p:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v12, name:Ljava/lang/StringBuilder;
    const-string v4, "GMT"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    if-gez v5, :cond_6

    .line 124
    const/16 v4, 0x2d

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    :goto_3
    const v4, 0x36ee80

    div-int v4, v13, v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const/16 v4, 0x3a

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    const v4, 0xea60

    div-int v11, v13, v4

    .line 133
    .local v11, min:I
    rem-int/lit8 v11, v11, 0x3c

    .line 135
    const/16 v4, 0xa

    if-ge v11, v4, :cond_4

    .line 136
    const/16 v4, 0x30

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    new-instance v1, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Lcom/android/deskclock/TimezonePicker$TimezoneItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    .local v1, item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    sget-object v4, Lcom/android/deskclock/TimezonePicker;->mTimezonesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v4, Lcom/android/deskclock/TimezonePicker;->mAddedOffsets:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 142
    sget-object v4, Lcom/android/deskclock/TimezonePicker;->mTimezonesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v4, Lcom/android/deskclock/TimezonePicker;->mAddedOffsets:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v1           #item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v5           #offset:I
    .end local v6           #city:Ljava/lang/String;
    .end local v11           #min:I
    .end local v12           #name:Ljava/lang/StringBuilder;
    .end local v13           #p:I
    .end local v15           #tz:Ljava/util/TimeZone;
    :cond_5
    :goto_4
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v4, v0, :cond_7

    .line 147
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 154
    .end local v17           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v10

    .line 155
    .local v10, ioe:Ljava/io/IOException;
    const-string v4, "ZonePicker"

    const-string v18, "Unable to read timezones.xml file"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 126
    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v2       #id:Ljava/lang/String;
    .restart local v3       #displayName:Ljava/lang/String;
    .restart local v5       #offset:I
    .restart local v6       #city:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/StringBuilder;
    .restart local v13       #p:I
    .restart local v15       #tz:Ljava/util/TimeZone;
    .restart local v17       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_6
    const/16 v4, 0x2b

    :try_start_2
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 149
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v5           #offset:I
    .end local v6           #city:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/StringBuilder;
    .end local v13           #p:I
    .end local v15           #tz:Ljava/util/TimeZone;
    :cond_7
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I

    goto/16 :goto_0

    .line 151
    :cond_8
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method
