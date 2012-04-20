.class public Lcom/android/calendar/event/EditEventHelper;
.super Ljava/lang/Object;
.source "EditEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;,
        Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    }
.end annotation


# static fields
.field static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field public static final ATTENDEE_VALUES:[I

.field static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field public static final REMINDERS_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mEventOk:Z

.field private mService:Lcom/android/calendar/AsyncQueryService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "eventLocation"

    aput-object v1, v0, v6

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "availability"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "original_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 112
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 148
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->ATTENDEE_VALUES:[I

    .line 163
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "calendar_color"

    aput-object v1, v0, v6

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "allowedAttendeeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "allowedAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void

    .line 148
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/CalendarEventModel;)V
    .locals 1
    .parameter "context"
    .parameter "model"

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventHelper;->mEventOk:Z

    .line 232
    new-instance v0, Lcom/android/calendar/AsyncQueryService;

    invoke-direct {v0, p1}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 233
    return-void
.end method

.method public static canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 2
    .parameter "model"

    .prologue
    .line 1133
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 4
    .parameter "model"

    .prologue
    .line 1128
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 1
    .parameter "model"

    .prologue
    .line 1123
    invoke-static {p0}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canRespond(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 3
    .parameter "model"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1148
    invoke-static {p0}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return v0

    .line 1152
    :cond_1
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 1153
    goto :goto_0

    .line 1156
    :cond_2
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v2, :cond_0

    .line 1162
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1166
    goto :goto_0
.end method

.method public static getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;
    .locals 6
    .parameter "list"
    .parameter "validator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/common/Rfc822Validator;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 552
    .local v2, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 553
    if-nez p1, :cond_1

    .line 567
    :cond_0
    return-object v2

    .line 559
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 560
    .local v1, addressIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/text/util/Rfc822Token;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 562
    .local v0, address:Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 563
    const-string v3, "EditEventHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping invalid attendee email address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method static isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z
    .locals 4
    .parameter "model"
    .parameter "originalModel"

    .prologue
    .line 880
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z
    .locals 6
    .parameter "model"
    .parameter "originalModel"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 774
    if-nez p1, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v0

    .line 778
    :cond_1
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    .line 779
    goto :goto_0

    .line 781
    :cond_2
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 782
    goto :goto_0
.end method

.method public static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 10
    .parameter
    .parameter "eventId"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    .local p4, originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 803
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez p5, :cond_0

    .line 829
    :goto_0
    return v7

    .line 808
    :cond_0
    const-string v6, "event_id=?"

    .line 809
    .local v6, where:Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v7

    .line 810
    .local v0, args:[Ljava/lang/String;
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 812
    .local v1, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v1, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 813
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 816
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 819
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 820
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 822
    .local v4, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 823
    const-string v7, "minutes"

    invoke-virtual {v4}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    const-string v7, "method"

    invoke-virtual {v4}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    const-string v7, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 826
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 827
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_1
    move v7, v8

    .line 829
    goto :goto_0
.end method

.method public static saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 9
    .parameter
    .parameter "eventIdIndex"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    .local p3, originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 848
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p4, :cond_0

    .line 873
    :goto_0
    return v5

    .line 853
    :cond_0
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 855
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "event_id=?"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 856
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 857
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 860
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 863
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 864
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 866
    .local v3, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 867
    const-string v5, "minutes"

    invoke-virtual {v3}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    const-string v5, "method"

    invoke-virtual {v3}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 870
    const-string v5, "event_id"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 871
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_1
    move v5, v6

    .line 873
    goto :goto_0
.end method

.method public static setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "model"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1083
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1084
    :cond_0
    const-string v1, "EditEventHelper"

    const-string v2, "Attempted to build non-existent model or from an incorrect query."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_1
    :goto_0
    return v0

    .line 1088
    :cond_2
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1092
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-nez v2, :cond_3

    .line 1093
    const-string v1, "EditEventHelper"

    const-string v2, "Can\'t update model with a Calendar cursor until it has seen an Event cursor."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    :cond_3
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1099
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1100
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1104
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 1106
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 1107
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 1108
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 1110
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    .line 1111
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 1112
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 1114
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    move v0, v1

    .line 1117
    goto :goto_0
.end method

.method public static setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 9
    .parameter "model"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1018
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 1019
    :cond_0
    const-string v4, "EditEventHelper"

    const-string v5, "Attempted to build non-existent model or from an incorrect query."

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/CalendarEventModel;->clear()V

    .line 1024
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1026
    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    .line 1027
    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mAccountName:Ljava/lang/String;

    .line 1028
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v7, v4

    iput-wide v7, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 1029
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1030
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1031
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1032
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 1033
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 1034
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v7, v4

    iput-wide v7, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1035
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1036
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, tz:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1038
    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1040
    :cond_2
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, rRule:Ljava/lang/String;
    iput-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1042
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 1043
    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 1044
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1045
    .local v0, accessLevel:I
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 1046
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 1047
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 1048
    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    .line 1049
    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1050
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 1051
    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 1053
    if-lez v0, :cond_3

    .line 1057
    add-int/lit8 v0, v0, -0x1

    .line 1059
    :cond_3
    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 1061
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v5

    .line 1064
    .local v1, hasRRule:Z
    :goto_5
    if-eqz v1, :cond_9

    .line 1065
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 1070
    :goto_6
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    goto/16 :goto_0

    .end local v0           #accessLevel:I
    .end local v1           #hasRRule:Z
    .end local v2           #rRule:Ljava/lang/String;
    .end local v3           #tz:Ljava/lang/String;
    :cond_4
    move v4, v6

    .line 1032
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 1033
    goto/16 :goto_2

    .restart local v0       #accessLevel:I
    .restart local v2       #rRule:Ljava/lang/String;
    .restart local v3       #tz:Ljava/lang/String;
    :cond_6
    move v4, v6

    .line 1046
    goto :goto_3

    :cond_7
    move v4, v6

    .line 1051
    goto :goto_4

    :cond_8
    move v1, v6

    .line 1061
    goto :goto_5

    .line 1067
    .restart local v1       #hasRRule:Z
    :cond_9
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_6
.end method

.method static updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V
    .locals 11
    .parameter "selection"
    .parameter "model"
    .parameter "weekStart"

    .prologue
    .line 930
    new-instance v7, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v7}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 932
    .local v7, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    if-nez p0, :cond_1

    .line 933
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    const/4 v9, 0x7

    if-eq p0, v9, :cond_0

    .line 938
    const/4 v9, 0x1

    if-ne p0, v9, :cond_3

    .line 939
    const/4 v9, 0x4

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 1005
    :cond_2
    :goto_1
    invoke-static {p2}, Lcom/android/calendarcommon/EventRecurrence;->calendarDay2Day(I)I

    move-result v9

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    .line 1006
    invoke-virtual {v7}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    goto :goto_0

    .line 940
    :cond_3
    const/4 v9, 0x2

    if-ne p0, v9, :cond_5

    .line 941
    const/4 v9, 0x5

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 942
    const/4 v4, 0x5

    .line 943
    .local v4, dayCount:I
    new-array v0, v4, [I

    .line 944
    .local v0, byday:[I
    new-array v1, v4, [I

    .line 946
    .local v1, bydayNum:[I
    const/4 v9, 0x0

    const/high16 v10, 0x2

    aput v10, v0, v9

    .line 947
    const/4 v9, 0x1

    const/high16 v10, 0x4

    aput v10, v0, v9

    .line 948
    const/4 v9, 0x2

    const/high16 v10, 0x8

    aput v10, v0, v9

    .line 949
    const/4 v9, 0x3

    const/high16 v10, 0x10

    aput v10, v0, v9

    .line 950
    const/4 v9, 0x4

    const/high16 v10, 0x20

    aput v10, v0, v9

    .line 951
    const/4 v3, 0x0

    .local v3, day:I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 952
    const/4 v9, 0x0

    aput v9, v1, v3

    .line 951
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 955
    :cond_4
    iput-object v0, v7, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 956
    iput-object v1, v7, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 957
    iput v4, v7, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 958
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v3           #day:I
    .end local v4           #dayCount:I
    :cond_5
    const/4 v9, 0x3

    if-ne p0, v9, :cond_6

    .line 959
    const/4 v9, 0x5

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 960
    const/4 v9, 0x1

    new-array v6, v9, [I

    .line 961
    .local v6, days:[I
    const/4 v4, 0x1

    .line 962
    .restart local v4       #dayCount:I
    new-array v5, v4, [I

    .line 963
    .local v5, dayNum:[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 964
    .local v8, startTime:Landroid/text/format/Time;
    iget-wide v9, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 966
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v10

    aput v10, v6, v9

    .line 968
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v5, v9

    .line 970
    iput-object v6, v7, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 971
    iput-object v5, v7, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 972
    iput v4, v7, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 973
    .end local v4           #dayCount:I
    .end local v5           #dayNum:[I
    .end local v6           #days:[I
    .end local v8           #startTime:Landroid/text/format/Time;
    :cond_6
    const/4 v9, 0x5

    if-ne p0, v9, :cond_7

    .line 974
    const/4 v9, 0x6

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 975
    const/4 v9, 0x0

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 976
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 977
    const/4 v9, 0x1

    new-array v2, v9, [I

    .line 978
    .local v2, bymonthday:[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 979
    .restart local v8       #startTime:Landroid/text/format/Time;
    iget-wide v9, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 980
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->monthDay:I

    aput v10, v2, v9

    .line 981
    iput-object v2, v7, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    goto/16 :goto_1

    .line 982
    .end local v2           #bymonthday:[I
    .end local v8           #startTime:Landroid/text/format/Time;
    :cond_7
    const/4 v9, 0x4

    if-ne p0, v9, :cond_9

    .line 983
    const/4 v9, 0x6

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 984
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 985
    const/4 v9, 0x0

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 987
    const/4 v9, 0x1

    new-array v0, v9, [I

    .line 988
    .restart local v0       #byday:[I
    const/4 v9, 0x1

    new-array v1, v9, [I

    .line 989
    .restart local v1       #bydayNum:[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 990
    .restart local v8       #startTime:Landroid/text/format/Time;
    iget-wide v9, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 992
    iget v9, v8, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    add-int/lit8 v4, v9, 0x1

    .line 993
    .restart local v4       #dayCount:I
    const/4 v9, 0x5

    if-ne v4, v9, :cond_8

    .line 994
    const/4 v4, -0x1

    .line 996
    :cond_8
    const/4 v9, 0x0

    aput v4, v1, v9

    .line 997
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v10

    aput v10, v0, v9

    .line 998
    iput-object v0, v7, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 999
    iput-object v1, v7, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    goto/16 :goto_1

    .line 1000
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v4           #dayCount:I
    .end local v8           #startTime:Landroid/text/format/Time;
    :cond_9
    const/4 v9, 0x6

    if-ne p0, v9, :cond_2

    .line 1001
    const/4 v9, 0x7

    iput v9, v7, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    goto/16 :goto_1
.end method


# virtual methods
.method addRecurrenceRule(Landroid/content/ContentValues;Lcom/android/calendar/CalendarEventModel;)V
    .locals 16
    .parameter "values"
    .parameter "model"

    .prologue
    .line 885
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 887
    .local v7, rrule:Ljava/lang/String;
    const-string v12, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 889
    .local v4, end:J
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 890
    .local v10, start:J
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 892
    .local v3, duration:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 893
    .local v6, isAllDay:Z
    cmp-long v12, v4, v10

    if-lez v12, :cond_2

    .line 894
    if-eqz v6, :cond_1

    .line 896
    sub-long v12, v4, v10

    const-wide/32 v14, 0x5265c00

    add-long/2addr v12, v14

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x5265c00

    div-long v1, v12, v14

    .line 898
    .local v1, days:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "P"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "D"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    .end local v1           #days:J
    :cond_0
    :goto_0
    const-string v12, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v13, "dtend"

    const/4 v12, 0x0

    check-cast v12, Ljava/lang/Long;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 916
    return-void

    .line 901
    :cond_1
    sub-long v12, v4, v10

    const-wide/16 v14, 0x3e8

    div-long v8, v12, v14

    .line 902
    .local v8, seconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "P"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "S"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 903
    goto :goto_0

    .line 904
    .end local v8           #seconds:J
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 907
    if-eqz v6, :cond_3

    .line 908
    const-string v3, "P1D"

    goto :goto_0

    .line 910
    :cond_3
    const-string v3, "P3600S"

    goto :goto_0
.end method

.method checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V
    .locals 24
    .parameter "originalModel"
    .parameter "model"
    .parameter "values"
    .parameter "modifyWhich"

    .prologue
    .line 605
    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 606
    .local v13, oldBegin:J
    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 607
    .local v15, oldEnd:J
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 608
    .local v12, oldAllDay:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 609
    .local v17, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 611
    .local v20, oldTimezone:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 612
    .local v4, newBegin:J
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 613
    .local v6, newEnd:J
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 614
    .local v3, newAllDay:Z
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 615
    .local v8, newRrule:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 618
    .local v9, newTimezone:Ljava/lang/String;
    cmp-long v22, v13, v4

    if-nez v22, :cond_1

    cmp-long v22, v15, v6

    if-nez v22, :cond_1

    if-ne v12, v3, :cond_1

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 621
    const-string v22, "dtstart"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 622
    const-string v22, "dtend"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 623
    const-string v22, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 624
    const-string v22, "allDay"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 625
    const-string v22, "rrule"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 626
    const-string v22, "eventTimezone"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 641
    const/16 v22, 0x3

    move/from16 v0, p4

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 642
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide/from16 v18, v0

    .line 643
    .local v18, oldStartMillis:J
    cmp-long v22, v13, v4

    if-eqz v22, :cond_2

    .line 645
    sub-long v10, v4, v13

    .line 646
    .local v10, offset:J
    add-long v18, v18, v10

    .line 648
    .end local v10           #offset:J
    :cond_2
    if-eqz v3, :cond_3

    .line 649
    new-instance v21, Landroid/text/format/Time;

    const-string v22, "UTC"

    invoke-direct/range {v21 .. v22}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 650
    .local v21, time:Landroid/text/format/Time;
    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 651
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 652
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 653
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 654
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 656
    .end local v21           #time:Landroid/text/format/Time;
    :cond_3
    const-string v22, "dtstart"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected constructDefaultEndTime(J)J
    .locals 2
    .parameter "startTime"

    .prologue
    .line 597
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    return-wide v0
.end method

.method protected constructDefaultStartTime(J)J
    .locals 5
    .parameter "now"

    .prologue
    const/4 v4, 0x0

    .line 578
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 579
    .local v0, defaultStart:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 580
    iput v4, v0, Landroid/text/format/Time;->second:I

    .line 581
    const/16 v3, 0x1e

    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 582
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 583
    .local v1, defaultStartMillis:J
    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 586
    .end local v1           #defaultStartMillis:J
    :goto_0
    return-wide v1

    .restart local v1       #defaultStartMillis:J
    :cond_0
    const-wide/32 v3, 0x1b7740

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method getContentValuesFromModel(Lcom/android/calendar/CalendarEventModel;)Landroid/content/ContentValues;
    .locals 18
    .parameter "model"

    .prologue
    .line 1180
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1181
    .local v14, title:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 1182
    .local v8, isAllDay:Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1183
    .local v9, rrule:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1184
    .local v13, timezone:Ljava/lang/String;
    if-nez v13, :cond_0

    .line 1185
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    .line 1187
    :cond_0
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v12, startTime:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v7, endTime:Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1191
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1193
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1197
    .local v15, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1198
    .local v3, calendarId:J
    if-eqz v8, :cond_3

    .line 1201
    const-string v13, "UTC"

    .line 1202
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v12, Landroid/text/format/Time;->hour:I

    .line 1203
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v12, Landroid/text/format/Time;->minute:I

    .line 1204
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v12, Landroid/text/format/Time;->second:I

    .line 1205
    iput-object v13, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1206
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 1208
    .local v10, startMillis:J
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 1209
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 1210
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 1211
    iput-object v13, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1212
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 1213
    .local v5, endMillis:J
    const-wide/32 v16, 0x5265c00

    add-long v16, v16, v10

    cmp-long v16, v5, v16

    if-gez v16, :cond_1

    .line 1216
    const-wide/32 v16, 0x5265c00

    add-long v5, v10, v16

    .line 1223
    :cond_1
    :goto_0
    const-string v16, "calendar_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1224
    const-string v16, "eventTimezone"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    const-string v17, "allDay"

    if-eqz v8, :cond_4

    const/16 v16, 0x1

    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1227
    const-string v16, "dtstart"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1228
    const-string v16, "rrule"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/calendar/event/EditEventHelper;->addRecurrenceRule(Landroid/content/ContentValues;Lcom/android/calendar/CalendarEventModel;)V

    .line 1235
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 1236
    const-string v16, "description"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 1241
    const-string v16, "eventLocation"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :goto_4
    const-string v16, "availability"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    const-string v17, "hasAttendeeData"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1248
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 1249
    .local v2, accessLevel:I
    if-lez v2, :cond_2

    .line 1252
    add-int/lit8 v2, v2, 0x1

    .line 1254
    :cond_2
    const-string v16, "accessLevel"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1256
    return-object v15

    .line 1219
    .end local v2           #accessLevel:I
    .end local v5           #endMillis:J
    .end local v10           #startMillis:J
    :cond_3
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 1220
    .restart local v10       #startMillis:J
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .restart local v5       #endMillis:J
    goto/16 :goto_0

    .line 1226
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1232
    :cond_5
    const-string v17, "duration"

    const/16 v16, 0x0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v16, "dtend"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1238
    :cond_6
    const-string v17, "description"

    const/16 v16, 0x0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1243
    :cond_7
    const-string v17, "eventLocation"

    const/16 v16, 0x0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1246
    :cond_8
    const/16 v16, 0x0

    goto :goto_5
.end method

.method public saveEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;I)Z
    .locals 45
    .parameter "model"
    .parameter "originalModel"
    .parameter "modifyWhich"

    .prologue
    .line 246
    const/4 v10, 0x0

    .line 252
    .local v10, forceSaveReminders:Z
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/calendar/event/EditEventHelper;->mEventOk:Z

    if-nez v11, :cond_0

    .line 256
    const/4 v11, 0x0

    .line 546
    :goto_0
    return v11

    .line 261
    :cond_0
    if-nez p1, :cond_1

    .line 262
    const-string v11, "EditEventHelper"

    const-string v12, "Attempted to save null model."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v11, 0x0

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarEventModel;->isValid()Z

    move-result v11

    if-nez v11, :cond_2

    .line 266
    const-string v11, "EditEventHelper"

    const-string v12, "Attempted to save invalid model."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v11, 0x0

    goto :goto_0

    .line 269
    :cond_2
    if-eqz p2, :cond_3

    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isSameEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 270
    const-string v11, "EditEventHelper"

    const-string v12, "Attempted to update existing event but models didn\'t refer to the same event."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v11, 0x0

    goto :goto_0

    .line 274
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p1 .. p2}, Lcom/android/calendar/CalendarEventModel;->isUnchanged(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 275
    const/4 v11, 0x0

    goto :goto_0

    .line 278
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v27, -0x1

    .line 281
    .local v27, eventIdIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/event/EditEventHelper;->getContentValuesFromModel(Lcom/android/calendar/CalendarEventModel;)Landroid/content/ContentValues;

    move-result-object v44

    .line 283
    .local v44, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v11, :cond_5

    if-nez p2, :cond_5

    .line 284
    const-string v11, "EditEventHelper"

    const-string v12, "Existing event but no originalModel provided. Aborting save."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v11, 0x0

    goto :goto_0

    .line 287
    :cond_5
    const/16 v43, 0x0

    .line 288
    .local v43, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 289
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v43

    .line 293
    :cond_6
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 294
    .local v8, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 295
    .local v33, len:I
    const-string v12, "hasAlarm"

    if-lez v33, :cond_e

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    if-nez v43, :cond_f

    .line 299
    const-string v11, "hasAttendeeData"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v11, "eventStatus"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 302
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 304
    .local v23, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const/4 v10, 0x1

    .line 398
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    :goto_2
    const/4 v11, -0x1

    move/from16 v0, v27

    if-eq v0, v11, :cond_1a

    const/16 v35, 0x1

    .line 400
    .local v35, newEvent:Z
    :goto_3
    if-eqz p2, :cond_1b

    .line 401
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 406
    .local v9, originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    :goto_4
    if-eqz v35, :cond_1c

    .line 407
    move/from16 v0, v27

    invoke-static {v5, v0, v8, v9, v10}, Lcom/android/calendar/event/EditEventHelper;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 415
    :cond_8
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v28, v0

    .line 418
    .local v28, hasAttendeeData:Z
    if-eqz v28, :cond_1d

    if-eqz v35, :cond_1d

    .line 419
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentValues;->clear()V

    .line 421
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 422
    .local v40, ownerEmail:Ljava/lang/String;
    if-eqz v40, :cond_b

    .line 423
    const-string v11, "attendeeEmail"

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v11, "attendeeRelationship"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    const-string v11, "attendeeType"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const/16 v32, 0x1

    .line 427
    .local v32, initialStatus:I
    if-eqz p2, :cond_9

    .line 428
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    move/from16 v32, v0

    .line 432
    :cond_9
    const-string v11, "calendar.google.com"

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 433
    const/16 v32, 0x0

    .line 435
    :cond_a
    const-string v11, "attendeeStatus"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 438
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v11, "event_id"

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 439
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v32           #initialStatus:I
    .end local v40           #ownerEmail:Ljava/lang/String;
    :cond_b
    :goto_6
    if-eqz v28, :cond_26

    if-nez v35, :cond_c

    if-eqz v43, :cond_26

    .line 459
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v22

    .line 461
    .local v22, attendees:Ljava/lang/String;
    if-eqz p2, :cond_1e

    .line 462
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v38

    .line 468
    .local v38, originalAttendeesString:Ljava/lang/String;
    :goto_7
    if-nez v35, :cond_d

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_26

    .line 472
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v34, v0

    .line 473
    .local v34, newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    new-instance v42, Ljava/util/LinkedList;

    invoke-direct/range {v42 .. v42}, Ljava/util/LinkedList;-><init>()V

    .line 477
    .local v42, removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v43, :cond_1f

    invoke-static/range {v43 .. v43}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 482
    .local v6, eventId:J
    :goto_8
    if-nez v35, :cond_24

    .line 483
    invoke-virtual/range {v42 .. v42}, Ljava/util/LinkedList;->clear()V

    .line 484
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v37, v0

    .line 485
    .local v37, originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 486
    .local v39, originalEmail:Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 488
    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 295
    .end local v6           #eventId:J
    .end local v9           #originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    .end local v22           #attendees:Ljava/lang/String;
    .end local v28           #hasAttendeeData:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v34           #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v35           #newEvent:Z
    .end local v37           #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v38           #originalAttendeesString:Ljava/lang/String;
    .end local v39           #originalEmail:Ljava/lang/String;
    .end local v42           #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 307
    :cond_f
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v44

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 310
    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 312
    :cond_10
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 315
    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 317
    :cond_11
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_13

    .line 320
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-wide/from16 v24, v0

    .line 321
    .local v24, begin:J
    const-string v11, "original_sync_id"

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v11, "originalInstanceTime"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move/from16 v18, v0

    .line 324
    .local v18, allDay:Z
    const-string v12, "originalAllDay"

    if-eqz v18, :cond_12

    const/4 v11, 0x1

    :goto_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v11, "eventStatus"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 328
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 330
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const/4 v10, 0x1

    .line 333
    goto/16 :goto_2

    .line 324
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_12
    const/4 v11, 0x0

    goto :goto_a

    .line 333
    .end local v18           #allDay:Z
    .end local v24           #begin:J
    :cond_13
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_18

    .line 335
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 340
    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 341
    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 348
    const-string v11, "eventStatus"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :goto_c
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 345
    :cond_14
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v11, v12}, Lcom/android/calendar/event/EditEventHelper;->updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)Ljava/lang/String;

    goto :goto_b

    .line 352
    :cond_15
    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v44

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 354
    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 356
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 364
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_16
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v11, v12}, Lcom/android/calendar/event/EditEventHelper;->updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)Ljava/lang/String;

    move-result-object v36

    .line 365
    .local v36, newRrule:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 366
    const-string v11, "rrule"

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 371
    const-string v11, "eventStatus"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 378
    .end local v36           #newRrule:Ljava/lang/String;
    :cond_18
    const/4 v11, 0x3

    move/from16 v0, p3

    if-ne v0, v11, :cond_7

    .line 381
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 385
    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 388
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 392
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v44

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 393
    invoke-static/range {v43 .. v43}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 398
    :cond_1a
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 403
    .restart local v35       #newEvent:Z
    :cond_1b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9       #originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    goto/16 :goto_4

    .line 409
    :cond_1c
    if-eqz v43, :cond_8

    .line 410
    invoke-static/range {v43 .. v43}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 411
    .restart local v6       #eventId:J
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    goto/16 :goto_5

    .line 441
    .end local v6           #eventId:J
    .restart local v28       #hasAttendeeData:Z
    :cond_1d
    if-eqz v28, :cond_b

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    if-eq v11, v12, :cond_b

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b

    .line 447
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    int-to-long v12, v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 449
    .local v20, attUri:Landroid/net/Uri;
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentValues;->clear()V

    .line 450
    const-string v11, "attendeeStatus"

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v11, "event_id"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 453
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 464
    .end local v20           #attUri:Landroid/net/Uri;
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .restart local v22       #attendees:Ljava/lang/String;
    :cond_1e
    const-string v38, ""

    .restart local v38       #originalAttendeesString:Ljava/lang/String;
    goto/16 :goto_7

    .line 477
    .restart local v34       #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .restart local v42       #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_1f
    const-wide/16 v6, -0x1

    goto/16 :goto_8

    .line 491
    .restart local v6       #eventId:J
    .restart local v31       #i$:Ljava/util/Iterator;
    .restart local v37       #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .restart local v39       #originalEmail:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 496
    .end local v39           #originalEmail:Ljava/lang/String;
    :cond_21
    invoke-virtual/range {v42 .. v42}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-lez v11, :cond_24

    .line 497
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 499
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v42 .. v42}, Ljava/util/LinkedList;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 500
    .local v19, args:[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v19, v11

    .line 501
    const/16 v29, 0x1

    .line 502
    .local v29, i:I
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v11, "event_id=? AND attendeeEmail IN ("

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .local v26, deleteWhere:Ljava/lang/StringBuilder;
    invoke-virtual/range {v42 .. v42}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_d
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 504
    .local v41, removedAttendee:Ljava/lang/String;
    const/4 v11, 0x1

    move/from16 v0, v29

    if-le v0, v11, :cond_22

    .line 505
    const-string v11, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_22
    const-string v11, "?"

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    add-int/lit8 v30, v29, 0x1

    .end local v29           #i:I
    .local v30, i:I
    aput-object v41, v19, v29

    move/from16 v29, v30

    .end local v30           #i:I
    .restart local v29       #i:I
    goto :goto_d

    .line 510
    .end local v41           #removedAttendee:Ljava/lang/String;
    :cond_23
    const-string v11, ")"

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 512
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v19           #args:[Ljava/lang/String;
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v26           #deleteWhere:Ljava/lang/StringBuilder;
    .end local v29           #i:I
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v37           #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    :cond_24
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_26

    .line 518
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 519
    .local v21, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentValues;->clear()V

    .line 520
    const-string v11, "attendeeName"

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v11, "attendeeEmail"

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v11, "attendeeRelationship"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string v11, "attendeeType"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    const-string v11, "attendeeStatus"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    if-eqz v35, :cond_25

    .line 528
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 530
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v11, "event_id"

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 536
    :goto_f
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 532
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_25
    const-string v11, "event_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v44

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 533
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_f

    .line 543
    .end local v6           #eventId:J
    .end local v21           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v22           #attendees:Ljava/lang/String;
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v34           #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v38           #originalAttendeesString:Ljava/lang/String;
    .end local v42           #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_26
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v12}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v12

    const/4 v13, 0x0

    const-string v14, "com.android.calendar"

    const-wide/16 v16, 0x0

    move-object v15, v5

    invoke-virtual/range {v11 .. v17}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 546
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)Ljava/lang/String;
    .locals 21
    .parameter
    .parameter "originalModel"
    .parameter "endTimeMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/android/calendar/CalendarEventModel;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 678
    .local v13, origAllDay:Z
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 679
    .local v15, origRrule:Ljava/lang/String;
    move-object v12, v15

    .line 681
    .local v12, newRrule:Ljava/lang/String;
    new-instance v14, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v14}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 682
    .local v14, origRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    invoke-virtual {v14, v15}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 686
    .local v5, startTimeMillis:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 687
    .local v3, dtstart:Landroid/text/format/Time;
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v7, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 688
    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 690
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 692
    .local v18, updateValues:Landroid/content/ContentValues;
    iget v7, v14, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-lez v7, :cond_1

    .line 705
    new-instance v4, Lcom/android/calendarcommon/RecurrenceSet;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v7, v8, v0, v1}, Lcom/android/calendarcommon/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .local v4, recurSet:Lcom/android/calendarcommon/RecurrenceSet;
    new-instance v2, Lcom/android/calendarcommon/RecurrenceProcessor;

    invoke-direct {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;-><init>()V

    .local v2, recurProc:Lcom/android/calendarcommon/RecurrenceProcessor;
    move-wide/from16 v7, p3

    .line 709
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J
    :try_end_0
    .catch Lcom/android/calendarcommon/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 714
    .local v16, recurrences:[J
    move-object/from16 v0, v16

    array-length v7, v0

    if-nez v7, :cond_0

    .line 715
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "can\'t use this method on first instance"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 710
    .end local v16           #recurrences:[J
    :catch_0
    move-exception v10

    .line 711
    .local v10, de:Lcom/android/calendarcommon/DateException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 718
    .end local v10           #de:Lcom/android/calendarcommon/DateException;
    .restart local v16       #recurrences:[J
    :cond_0
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v11}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 719
    .local v11, excepRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    invoke-virtual {v11, v15}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 720
    iget v7, v11, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move-object/from16 v0, v16

    array-length v8, v0

    sub-int/2addr v7, v8

    iput v7, v11, Lcom/android/calendarcommon/EventRecurrence;->count:I

    .line 721
    invoke-virtual {v11}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 723
    move-object/from16 v0, v16

    array-length v7, v0

    iput v7, v14, Lcom/android/calendarcommon/EventRecurrence;->count:I

    .line 754
    .end local v2           #recurProc:Lcom/android/calendarcommon/RecurrenceProcessor;
    .end local v4           #recurSet:Lcom/android/calendarcommon/RecurrenceSet;
    .end local v11           #excepRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    .end local v16           #recurrences:[J
    :goto_0
    const-string v7, "rrule"

    invoke-virtual {v14}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v7, "dtstart"

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 756
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 759
    .local v9, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    return-object v12

    .line 730
    .end local v9           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 731
    .local v17, untilTime:Landroid/text/format/Time;
    const-string v7, "UTC"

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 735
    const-wide/16 v7, 0x3e8

    sub-long v7, p3, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 736
    if-eqz v13, :cond_2

    .line 737
    const/4 v7, 0x0

    move-object/from16 v0, v17

    iput v7, v0, Landroid/text/format/Time;->hour:I

    .line 738
    const/4 v7, 0x0

    move-object/from16 v0, v17

    iput v7, v0, Landroid/text/format/Time;->minute:I

    .line 739
    const/4 v7, 0x0

    move-object/from16 v0, v17

    iput v7, v0, Landroid/text/format/Time;->second:I

    .line 740
    const/4 v7, 0x1

    move-object/from16 v0, v17

    iput-boolean v7, v0, Landroid/text/format/Time;->allDay:Z

    .line 741
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 745
    const/4 v7, 0x0

    iput v7, v3, Landroid/text/format/Time;->hour:I

    .line 746
    const/4 v7, 0x0

    iput v7, v3, Landroid/text/format/Time;->minute:I

    .line 747
    const/4 v7, 0x0

    iput v7, v3, Landroid/text/format/Time;->second:I

    .line 748
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/text/format/Time;->allDay:Z

    .line 749
    const-string v7, "UTC"

    iput-object v7, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 751
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    goto :goto_0
.end method
