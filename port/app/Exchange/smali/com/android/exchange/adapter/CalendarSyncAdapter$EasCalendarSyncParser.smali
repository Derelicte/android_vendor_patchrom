.class public Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasCalendarSyncParser"
.end annotation


# instance fields
.field mAccountUri:Landroid/net/Uri;

.field mBindArgument:[Ljava/lang/String;

.field mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

.field final synthetic this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V
    .locals 2
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    .line 321
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 315
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 317
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    .line 322
    const-string v0, "CalendarParser"

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setLoggingTag(Ljava/lang/String;)V

    .line 323
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 324
    return-void
.end method

.method private addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "ops"
    .parameter "eventId"
    .parameter "organizerName"
    .parameter "organizerEmail"

    .prologue
    const/4 v3, 0x1

    .line 329
    if-nez p4, :cond_0

    if-eqz p5, :cond_3

    .line 330
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v0, attendeeCv:Landroid/content/ContentValues;
    if-eqz p4, :cond_1

    .line 332
    const-string v1, "attendeeName"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_1
    if-eqz p5, :cond_2

    .line 335
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_2
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v1, "attendeeType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v1, "attendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_4

    .line 341
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    .line 346
    .end local v0           #attendeeCv:Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-void

    .line 343
    .restart local v0       #attendeeCv:Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto :goto_0
.end method

.method private attachmentsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    :goto_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1018
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 1023
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1020
    :pswitch_0
    const/16 v0, 0x12b

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipParser(I)V

    goto :goto_0

    .line 1026
    :cond_0
    return-void

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch 0x12b
        :pswitch_0
    .end packed-switch
.end method

.method private attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;
    .locals 9
    .parameter "ops"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x3

    .line 1055
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1056
    .local v0, cv:Landroid/content/ContentValues;
    :goto_0
    const/16 v3, 0x108

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    if-eq v3, v7, :cond_4

    .line 1057
    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v3, :sswitch_data_0

    .line 1087
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1059
    :sswitch_0
    const-string v3, "attendeeEmail"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :sswitch_1
    const-string v3, "attendeeName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 1066
    .local v1, status:I
    const-string v8, "attendeeStatus"

    if-ne v1, v6, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-ne v1, v7, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    move v3, v7

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1074
    .end local v1           #status:I
    :sswitch_3
    const/4 v2, 0x0

    .line 1076
    .local v2, type:I
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1084
    :goto_2
    const-string v3, "attendeeType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1078
    :pswitch_0
    const/4 v2, 0x1

    .line 1079
    goto :goto_2

    .line 1081
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_2

    .line 1090
    .end local v2           #type:I
    :cond_4
    const-string v3, "attendeeRelationship"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    return-object v0

    .line 1057
    :sswitch_data_0
    .sparse-switch
        0x109 -> :sswitch_0
        0x10a -> :sswitch_1
        0x129 -> :sswitch_2
        0x12a -> :sswitch_3
    .end sparse-switch

    .line 1076
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;
    .locals 5
    .parameter "ops"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, attendeeCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .local v1, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const/16 v3, 0x107

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 1033
    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 1047
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1035
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;

    move-result-object v2

    .line 1039
    .local v2, cv:Landroid/content/ContentValues;
    add-int/lit8 v0, v0, 0x1

    .line 1042
    const/16 v3, 0x33

    if-gt v0, v3, :cond_0

    .line 1043
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1050
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_1
    return-object v1

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x108
        :pswitch_0
    .end packed-switch
.end method

.method private bodyParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1097
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 1102
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1099
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1100
    goto :goto_0

    .line 1107
    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    .line 1109
    :goto_1
    return-object v1

    :cond_1
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1097
    :pswitch_data_0
    .packed-switch 0x44b
        :pswitch_0
    .end packed-switch
.end method

.method private categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .local v0, categories:Ljava/lang/StringBuilder;
    :goto_0
    const/16 v1, 0x10e

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 999
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 1007
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1003
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1010
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 999
    nop

    :pswitch_data_0
    .packed-switch 0x10f
        :pswitch_0
    .end packed-switch
.end method

.method private encodeVisibility(I)I
    .locals 1
    .parameter "easVisibility"

    .prologue
    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, visibility:I
    packed-switch p1, :pswitch_data_0

    .line 978
    :goto_0
    return v0

    .line 966
    :pswitch_0
    const/4 v0, 0x0

    .line 967
    goto :goto_0

    .line 969
    :pswitch_1
    const/4 v0, 0x3

    .line 970
    goto :goto_0

    .line 972
    :pswitch_2
    const/4 v0, 0x2

    .line 973
    goto :goto_0

    .line 975
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 16
    .parameter "ops"
    .parameter "parentCv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 834
    .local v3, cv:Landroid/content/ContentValues;
    const-string v2, "calendar_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 838
    const-string v2, "organizer"

    const-string v4, "organizer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v2, "title"

    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v2, "description"

    const-string v4, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v2, "originalAllDay"

    const-string v4, "allDay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    const-string v2, "eventLocation"

    const-string v4, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v2, "accessLevel"

    const-string v4, "accessLevel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v2, "eventTimezone"

    const-string v4, "eventTimezone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v2, "hasAttendeeData"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const/4 v8, 0x0

    .line 854
    .local v8, allDayEvent:I
    const-string v2, "original_sync_id"

    const-string v4, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v13, "_noStartTime"

    .line 857
    .local v13, exceptionStartTime:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    .line 858
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 860
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attachmentsParser()V

    goto :goto_0

    .line 863
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 864
    const-string v2, "originalInstanceTime"

    invoke-static {v13}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 868
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 869
    const-string v2, "eventStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 873
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v8

    .line 874
    const-string v2, "allDay"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 877
    :sswitch_4
    const-string v2, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :sswitch_5
    const-string v2, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 883
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p6

    .line 884
    goto :goto_0

    .line 886
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p8

    .line 887
    goto :goto_0

    .line 889
    :sswitch_8
    const-string v2, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 892
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v15

    .line 893
    .local v15, rrule:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 894
    const-string v2, "rrule"

    invoke-virtual {v3, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    .end local v15           #rrule:Ljava/lang/String;
    :sswitch_a
    const-string v2, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    :sswitch_b
    const-string v2, "accessLevel"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 904
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result p5

    .line 907
    goto/16 :goto_0

    .line 921
    :cond_1
    const-string v2, "_sync_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    .line 925
    invoke-virtual/range {v2 .. v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 928
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 960
    :cond_2
    :goto_1
    return-void

    .line 931
    :cond_3
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 932
    .local v12, exceptionStart:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newException(Landroid/content/ContentValues;)V

    .line 934
    const/4 v11, 0x0

    .line 935
    .local v11, attendeesRedacted:Z
    if-eqz p3, :cond_6

    .line 936
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 938
    .local v9, attValues:Landroid/content/ContentValues;
    const-string v2, "attendeeEmail"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 942
    .local v10, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 943
    const-string v2, "attendeeStatus"

    invoke-static/range {p5 .. p5}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 945
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 946
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v2

    const/16 v4, 0x1f4

    if-ge v2, v4, :cond_5

    .line 947
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 949
    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 954
    .end local v9           #attValues:Landroid/content/ContentValues;
    .end local v10           #attendeeEmail:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_6
    if-lez p4, :cond_7

    .line 955
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 957
    :cond_7
    if-eqz v11, :cond_2

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Attendees redacted in this exception"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 858
    :sswitch_data_0
    .sparse-switch
        0x106 -> :sswitch_3
        0x10b -> :sswitch_5
        0x10d -> :sswitch_c
        0x112 -> :sswitch_7
        0x115 -> :sswitch_2
        0x116 -> :sswitch_1
        0x117 -> :sswitch_8
        0x11b -> :sswitch_9
        0x125 -> :sswitch_b
        0x126 -> :sswitch_a
        0x127 -> :sswitch_6
        0x12c -> :sswitch_0
        0x44a -> :sswitch_4
    .end sparse-switch
.end method

.method private exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 2
    .parameter "ops"
    .parameter "cv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 984
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    const/16 v0, 0x114

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 985
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 991
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 987
    :pswitch_0
    invoke-direct/range {p0 .. p9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto :goto_0

    .line 994
    :cond_0
    return-void

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x113
        :pswitch_0
    .end packed-switch
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "clientId"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1135
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sync_data2=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "serverId"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6
    .parameter "cv"
    .parameter "reason"

    .prologue
    .line 740
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_1

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event invalid, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping: Columns = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 744
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 747
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EasCalendarSyncAdapter"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 749
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V
    .locals 50
    .parameter "ops"
    .parameter "serverId"
    .parameter "update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 417
    .local v12, cv:Landroid/content/ContentValues;
    const-string v4, "calendar_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J
    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 418
    const-string v4, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v4, "hasAttendeeData"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string v4, "sync_data2"

    const-string v5, "0"

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/16 v26, 0x0

    .line 423
    .local v26, allDayEvent:I
    const/4 v8, 0x0

    .line 424
    .local v8, organizerName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 425
    .local v9, organizerEmail:Ljava/lang/String;
    const/16 v36, -0x1

    .line 426
    .local v36, eventOffset:I
    const/16 v34, -0x1

    .line 427
    .local v34, deleteOffset:I
    const/4 v15, 0x1

    .line 428
    .local v15, busyStatus:I
    const/16 v45, 0x0

    .line 430
    .local v45, responseType:I
    const/16 v37, 0x1

    .line 431
    .local v37, firstTag:Z
    const-wide/16 v6, -0x1

    .line 432
    .local v6, eventId:J
    const-wide/16 v16, -0x1

    .line 433
    .local v16, startTime:J
    const-wide/16 v18, -0x1

    .line 434
    .local v18, endTime:J
    const/16 v49, 0x0

    .line 437
    .local v49, timeZone:Ljava/util/TimeZone;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v13, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v14, -0x1

    .line 439
    .local v14, reminderMins:I
    const/16 v35, 0x0

    .line 440
    .local v35, dtStamp:Ljava/lang/String;
    const/16 v44, 0x0

    .line 442
    .local v44, organizerAdded:Z
    :cond_0
    :goto_0
    const/16 v4, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_d

    .line 443
    if-eqz p3, :cond_8

    if-eqz v37, :cond_8

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 446
    .local v30, c:Landroid/database/Cursor;
    const-wide/16 v41, -0x1

    .line 448
    .local v41, id:J
    if-eqz v30, :cond_1

    :try_start_0
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 449
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v41

    .line 452
    :cond_1
    if-eqz v30, :cond_2

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v41, v4

    if-lez v4, :cond_7

    .line 456
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v5, 0x111

    if-ne v4, v5, :cond_4

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v35

    .line 458
    goto :goto_0

    .line 452
    :catchall_0
    move-exception v4

    if-eqz v30, :cond_3

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 459
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v5, 0x107

    if-ne v4, v5, :cond_6

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    .line 463
    new-instance v4, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterAttendees:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v10, "event_id=? AND attendeeRelationship!=2"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 466
    move-wide/from16 v6, v41

    .line 485
    .end local v30           #c:Landroid/database/Cursor;
    .end local v41           #id:J
    :cond_5
    :goto_1
    const/16 v37, 0x0

    .line 486
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v4, :sswitch_data_0

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 469
    .restart local v30       #c:Landroid/database/Cursor;
    .restart local v41       #id:J
    :cond_6
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "Changing (delete/add) event "

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p1

    move-wide/from16 v1, v41

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newDelete(JLjava/lang/String;)I

    move-result v34

    .line 473
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v36

    goto :goto_1

    .line 477
    :cond_7
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v36

    .line 478
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "EasCalendarSyncAdapter"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "Changed item not found; treating as new."

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 480
    .end local v30           #c:Landroid/database/Cursor;
    .end local v41           #id:J
    :cond_8
    if-eqz v37, :cond_5

    .line 483
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400()Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v36

    goto :goto_1

    .line 488
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v26

    .line 489
    if-eqz v26, :cond_a

    if-eqz v49, :cond_a

    .line 492
    new-instance v31, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 493
    .local v31, cal:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v31

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 494
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All-day event arrived in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v49 .. v49}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 495
    const/16 v4, 0xb

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0xc

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-eqz v4, :cond_a

    .line 497
    :cond_9
    const/16 v26, 0x0

    .line 498
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not an all-day event locally: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v11}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 501
    .end local v31           #cal:Ljava/util/GregorianCalendar;
    :cond_a
    const-string v4, "allDay"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 504
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attachmentsParser()V

    goto/16 :goto_0

    .line 508
    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;

    move-result-object v13

    .line 509
    goto/16 :goto_0

    .line 511
    :sswitch_3
    const-string v4, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :sswitch_4
    const-string v4, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v49

    .line 518
    if-nez v49, :cond_b

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v49

    .line 521
    :cond_b
    const-string v4, "eventTimezone"

    invoke-virtual/range {v49 .. v49}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v16

    .line 525
    goto/16 :goto_0

    .line 527
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v18

    .line 528
    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 532
    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 533
    const/16 v44, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 534
    invoke-direct/range {v10 .. v19}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto/16 :goto_0

    .line 538
    :sswitch_9
    const-string v4, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v46

    .line 542
    .local v46, rrule:Ljava/lang/String;
    if-eqz v46, :cond_0

    .line 543
    const-string v4, "rrule"

    move-object/from16 v0, v46

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    .end local v46           #rrule:Ljava/lang/String;
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 548
    const-string v4, "organizer"

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :sswitch_c
    const-string v4, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 554
    :sswitch_d
    const-string v4, "accessLevel"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 557
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 558
    goto/16 :goto_0

    .line 562
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->noContent:Z

    if-nez v4, :cond_c

    const/16 v38, 0x1

    .line 563
    .local v38, hasContent:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v14

    .line 564
    if-eqz v38, :cond_0

    .line 565
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(I)V

    .line 566
    const-string v4, "hasAlarm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 562
    .end local v38           #hasContent:Z
    :cond_c
    const/16 v38, 0x0

    goto :goto_2

    .line 572
    :sswitch_10
    const-string v4, "sync_data2"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v35

    .line 576
    goto/16 :goto_0

    .line 578
    :sswitch_12
    const-string v4, "meeting_status"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v15

    .line 585
    goto/16 :goto_0

    .line 589
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v45

    .line 590
    goto/16 :goto_0

    .line 592
    :sswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;

    move-result-object v32

    .line 593
    .local v32, categories:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 594
    const-string v4, "categories"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v32           #categories:Ljava/lang/String;
    :cond_d
    move-object/from16 v20, p0

    move-object/from16 v21, v12

    move-wide/from16 v22, v16

    move-wide/from16 v24, v18

    .line 603
    invoke-virtual/range {v20 .. v26}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 606
    if-nez v44, :cond_e

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 607
    invoke-direct/range {v4 .. v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    .line 617
    .local v48, selfOrganizer:Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v43

    .line 618
    .local v43, numAttendees:I
    const/16 v4, 0x32

    move/from16 v0, v43

    if-le v0, v4, :cond_15

    .line 624
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_14

    .line 625
    const-string v4, "attendeesRedacted"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    if-eqz v48, :cond_f

    .line 627
    const-string v4, "upsyncProhibited"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_f
    :goto_3
    if-eqz v48, :cond_10

    .line 637
    const-string v9, "upload_disallowed@uploadisdisallowed.aaa"

    .line 638
    const-string v4, "organizer"

    invoke-virtual {v12, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_10
    const-string v4, "hasAttendeeData"

    const-string v5, "0"

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Maximum number of attendees exceeded; redacting"

    aput-object v11, v5, v10

    invoke-virtual {v4, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 704
    :cond_11
    :goto_4
    if-ltz v36, :cond_13

    .line 706
    if-eqz v35, :cond_12

    .line 707
    const-string v4, "dtstamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 711
    new-instance v4, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 736
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 737
    return-void

    .line 630
    :cond_14
    const-string v4, "attendeesRedacted"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 631
    if-eqz v48, :cond_f

    .line 632
    const-string v4, "upsyncProhibited"

    const-string v5, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    .line 643
    :cond_15
    if-lez v43, :cond_11

    .line 644
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .local v47, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    .line 646
    .local v27, attendee:Landroid/content/ContentValues;
    const-string v4, "attendeeEmail"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 647
    .local v28, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v47

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v4, "\\"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 653
    if-eqz v45, :cond_18

    .line 654
    invoke-static/range {v45 .. v45}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromResponseType(I)I

    move-result v29

    .line 666
    .local v29, attendeeStatus:I
    :goto_7
    const-string v4, "attendeeStatus"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    if-eqz v9, :cond_16

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 675
    :cond_16
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_1a

    .line 676
    const-string v4, "userAttendeeStatus"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .end local v29           #attendeeStatus:I
    :cond_17
    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_1b

    .line 686
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    goto :goto_6

    .line 656
    :cond_18
    if-nez p3, :cond_19

    .line 659
    const/16 v29, 0x0

    .restart local v29       #attendeeStatus:I
    goto :goto_7

    .line 663
    .end local v29           #attendeeStatus:I
    :cond_19
    invoke-static {v15}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v29

    .restart local v29       #attendeeStatus:I
    goto :goto_7

    .line 679
    :cond_1a
    const-string v4, "userAttendeeStatus"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_8

    .line 688
    .end local v29           #attendeeStatus:I
    :cond_1b
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto/16 :goto_6

    .line 691
    .end local v27           #attendee:Landroid/content/ContentValues;
    .end local v28           #attendeeEmail:Ljava/lang/String;
    :cond_1c
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_1d

    .line 692
    const-string v4, "attendees"

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v4, "attendeesRedacted"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v4, "upsyncProhibited"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 696
    :cond_1d
    const-string v4, "attendees"

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 698
    const-string v4, "attendeesRedacted"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 699
    const-string v4, "upsyncProhibited"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 717
    .end local v40           #i$:Ljava/util/Iterator;
    .end local v47           #sb:Ljava/lang/StringBuilder;
    :cond_1e
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    sub-int v33, v4, v36

    .line 718
    .local v33, cnt:I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "EasCalendarSyncAdapter"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " inserts from mOps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 719
    const/16 v39, 0x0

    .local v39, i:I
    :goto_9
    move/from16 v0, v39

    move/from16 v1, v33

    if-ge v0, v1, :cond_1f

    .line 720
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 719
    add-int/lit8 v39, v39, 0x1

    goto :goto_9

    .line 722
    :cond_1f
    move/from16 v0, v36

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 725
    if-ltz v34, :cond_13

    .line 727
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 729
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 730
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "EasCalendarSyncAdapter"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "Removing deletion ops from mOps"

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 731
    move/from16 v0, v34

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    goto/16 :goto_5

    .line 486
    nop

    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_5
        0x106 -> :sswitch_0
        0x107 -> :sswitch_2
        0x10b -> :sswitch_4
        0x10d -> :sswitch_13
        0x10e -> :sswitch_15
        0x111 -> :sswitch_11
        0x112 -> :sswitch_7
        0x114 -> :sswitch_8
        0x117 -> :sswitch_9
        0x118 -> :sswitch_12
        0x119 -> :sswitch_b
        0x11a -> :sswitch_e
        0x11b -> :sswitch_a
        0x124 -> :sswitch_f
        0x125 -> :sswitch_d
        0x126 -> :sswitch_c
        0x127 -> :sswitch_6
        0x128 -> :sswitch_10
        0x12c -> :sswitch_1
        0x136 -> :sswitch_14
        0x44a -> :sswitch_3
    .end sparse-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1115
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1117
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1118
    goto :goto_0

    .line 1120
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1126
    :cond_0
    return-void

    .line 1115
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1267
    const/4 v5, 0x0

    .line 1268
    .local v5, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1269
    .local v1, clientId:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1270
    .local v6, status:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1271
    .local v2, cv:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 1272
    iget v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v7, :pswitch_data_0

    .line 1286
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1274
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1275
    goto :goto_0

    .line 1277
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1278
    goto :goto_0

    .line 1280
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 1281
    if-eq v6, v11, :cond_0

    .line 1282
    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to add event failed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_1
    if-nez v1, :cond_2

    .line 1311
    :goto_1
    return-void

    .line 1291
    :cond_2
    if-nez v5, :cond_3

    .line 1293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAIL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1296
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1298
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1299
    const-string v7, "_sync_id"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v7, "sync_data2"

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1303
    .local v3, id:J
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    new-instance v8, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v9, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 1306
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was given serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    .end local v3           #id:J
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1272
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 6
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1169
    const/4 v0, 0x0

    .line 1170
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1171
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1180
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1173
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1174
    goto :goto_0

    .line 1176
    :sswitch_1
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1183
    :cond_0
    return-void

    .line 1171
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1314
    const/4 v0, 0x0

    .line 1315
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1316
    .local v1, status:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1317
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1325
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1319
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1320
    goto :goto_0

    .line 1322
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1323
    goto :goto_0

    .line 1328
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1329
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1331
    :cond_1
    return-void

    .line 1317
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1187
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1188
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1190
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1191
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1193
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1194
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1196
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 1198
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1200
    :cond_3
    return-void
.end method

.method public commit()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1204
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Calendar SyncKey saved as: "

    aput-object v3, v0, v12

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    new-instance v3, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    sget-object v4, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v5, v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v10, "com.android.exchange"

    invoke-static {v4, v5, v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v5, v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v10, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v4, v5, v10}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation;)V

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 1213
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1216
    .local v1, eventId:J
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1223
    .local v9, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v9, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 1219
    .end local v9           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    move-exception v7

    .line 1221
    .local v7, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 1230
    .end local v1           #eventId:J
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    const-string v4, "com.android.calendar"

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->safeExecute(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    #setter for: Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$902(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;[Landroid/content/ContentProviderResult;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1235
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1237
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1238
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1239
    .local v6, cv:Landroid/content/ContentValues;
    const-string v0, "dirty"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1240
    const-string v0, "sync_data8"

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1242
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1231
    .end local v1           #eventId:J
    .end local v6           #cv:Landroid/content/ContentValues;
    :catch_1
    move-exception v7

    .line 1232
    .restart local v7       #e:Landroid/os/RemoteException;
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Remote exception caught; will retry"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1251
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1252
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v3, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1260
    .end local v1           #eventId:J
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1261
    .restart local v9       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_3

    .line 1264
    .end local v9           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_4
    return-void
.end method

.method public deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1140
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1141
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1156
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1143
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1147
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1149
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->delete(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1159
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 1141
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method isValidEventValues(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "cv"

    .prologue
    const/4 v3, 0x0

    .line 752
    const-string v4, "originalInstanceTime"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 754
    .local v2, isException:Z
    const-string v4, "dtstart"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 755
    const-string v4, "DTSTART missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 781
    :cond_0
    :goto_0
    return v3

    .line 758
    :cond_1
    if-nez v2, :cond_2

    const-string v4, "sync_data2"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 759
    const-string v4, "_SYNC_DATA missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_2
    if-nez v2, :cond_3

    const-string v4, "dtend"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "duration"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 764
    const-string v4, "DTEND/DURATION missing"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_3
    if-eqz v2, :cond_4

    const-string v4, "dtend"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 768
    const-string v4, "Exception missing DTEND"

    invoke-direct {p0, p1, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_4
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 772
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, duration:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 774
    const-string v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 775
    const-string v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 776
    .local v0, ade:Ljava/lang/Integer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "D"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 781
    .end local v0           #ade:Ljava/lang/Integer;
    .end local v1           #duration:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public recurrenceParser()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    const/4 v0, -0x1

    .line 787
    .local v0, type:I
    const/4 v1, -0x1

    .line 788
    .local v1, occurrences:I
    const/4 v2, -0x1

    .line 789
    .local v2, interval:I
    const/4 v3, -0x1

    .line 790
    .local v3, dow:I
    const/4 v4, -0x1

    .line 791
    .local v4, dom:I
    const/4 v5, -0x1

    .line 792
    .local v5, wom:I
    const/4 v6, -0x1

    .line 793
    .local v6, moy:I
    const/4 v7, 0x0

    .line 795
    .local v7, until:Ljava/lang/String;
    :goto_0
    const/16 v8, 0x11b

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 796
    iget v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v8, :pswitch_data_0

    .line 822
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 798
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v0

    .line 799
    goto :goto_0

    .line 801
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    .line 802
    goto :goto_0

    .line 804
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 805
    goto :goto_0

    .line 807
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    .line 808
    goto :goto_0

    .line 810
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v4

    .line 811
    goto :goto_0

    .line 813
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    .line 814
    goto :goto_0

    .line 816
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 817
    goto :goto_0

    .line 819
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 820
    goto :goto_0

    .line 826
    :cond_0
    invoke-static/range {v0 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x11c
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1337
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1338
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1339
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 1340
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1341
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 1343
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1345
    :cond_2
    return-void
.end method

.method setTimeRelatedValues(Landroid/content/ContentValues;JJI)V
    .locals 13
    .parameter "cv"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "allDayEvent"

    .prologue
    .line 367
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-gez v7, :cond_0

    .line 412
    :goto_0
    return-void

    .line 370
    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-gez v7, :cond_1

    const-wide/32 v7, 0x1b7740

    add-long p4, p2, v7

    .line 373
    :cond_1
    if-eqz p6, :cond_2

    .line 374
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v7

    move-wide v0, p2

    invoke-static {v0, v1, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p2

    .line 375
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;
    invoke-static {v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v7

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p4

    .line 376
    const-string v7, "eventTimezone"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, originalTimeZone:Ljava/lang/String;
    const-string v7, "sync_data1"

    invoke-virtual {p1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v7, "eventTimezone"

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v6           #originalTimeZone:Ljava/lang/String;
    :cond_2
    const-string v7, "originalInstanceTime"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "originalAllDay"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 385
    const-string v7, "originalAllDay"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 386
    .local v2, ade:Ljava/lang/Integer;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_3

    .line 387
    const-string v7, "originalInstanceTime"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 388
    .local v4, exceptionTime:J
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100()Ljava/util/TimeZone;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 389
    .local v3, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 390
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 391
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 392
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 393
    const-string v7, "originalInstanceTime"

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    .end local v2           #ade:Ljava/lang/Integer;
    .end local v3           #cal:Ljava/util/GregorianCalendar;
    .end local v4           #exceptionTime:J
    :cond_3
    const-string v7, "dtstart"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    const-string v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 401
    if-eqz p6, :cond_4

    .line 402
    const-string v7, "duration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p4, p2

    const-wide/32 v11, 0x5265c00

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "D"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_4
    const-string v7, "duration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p4, p2

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "M"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    :cond_5
    const-string v7, "dtend"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    const-string v7, "lastDate"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method
