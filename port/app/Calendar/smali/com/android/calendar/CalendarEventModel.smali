.class public Lcom/android/calendar/CalendarEventModel;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarEventModel$ReminderEntry;,
        Lcom/android/calendar/CalendarEventModel$Attendee;
    }
.end annotation


# instance fields
.field public mAccessLevel:I

.field public mAccountName:Ljava/lang/String;

.field public mAccountType:Ljava/lang/String;

.field public mAllDay:Z

.field public mAttendeesList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public mAvailability:I

.field public mCalendarAccessLevel:I

.field public mCalendarAllowedAttendeeTypes:Ljava/lang/String;

.field public mCalendarAllowedAvailability:Ljava/lang/String;

.field public mCalendarAllowedReminders:Ljava/lang/String;

.field public mCalendarColor:I

.field public mCalendarDisplayName:Ljava/lang/String;

.field public mCalendarId:J

.field public mCalendarMaxReminders:I

.field public mDefaultReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mDescription:Ljava/lang/String;

.field public mDuration:Ljava/lang/String;

.field public mEnd:J

.field public mGuestsCanInviteOthers:Z

.field public mGuestsCanModify:Z

.field public mGuestsCanSeeGuests:Z

.field public mHasAlarm:Z

.field public mHasAttendeeData:Z

.field public mId:J

.field public mIsFirstEventInSeries:Z

.field public mIsOrganizer:Z

.field public mLocation:Ljava/lang/String;

.field public mModelUpdatedWithEventCursor:Z

.field public mOrganizer:Ljava/lang/String;

.field public mOrganizerCanRespond:Z

.field public mOrganizerDisplayName:Ljava/lang/String;

.field public mOriginalAllDay:Ljava/lang/Boolean;

.field public mOriginalEnd:J

.field public mOriginalId:J

.field public mOriginalStart:J

.field public mOriginalSyncId:Ljava/lang/String;

.field public mOriginalTime:Ljava/lang/Long;

.field public mOwnerAccount:Ljava/lang/String;

.field public mOwnerAttendeeId:I

.field public mReminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mRrule:Ljava/lang/String;

.field public mSelfAttendeeStatus:I

.field public mStart:J

.field public mSyncAccount:Ljava/lang/String;

.field public mSyncAccountType:Ljava/lang/String;

.field public mSyncId:Ljava/lang/String;

.field public mTimezone:Ljava/lang/String;

.field public mTimezone2:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mAccountName:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 199
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 200
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 202
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 208
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 213
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 223
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 224
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 228
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 229
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 233
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 234
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 235
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 236
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 238
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 240
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 244
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 245
    iput v6, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 246
    iput v6, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 247
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 248
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    .line 249
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 250
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 251
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 253
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 256
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 262
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    .line 273
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 274
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/calendar/CalendarEventModel;-><init>()V

    .line 280
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 283
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_default_reminder"

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, defaultReminder:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, defaultReminderMins:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 288
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 289
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDefaultReminders:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->valueOf(I)Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 295
    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/CalendarEventModel;-><init>(Landroid/content/Context;)V

    .line 297
    if-nez p2, :cond_1

    .line 348
    :cond_0
    return-void

    .line 301
    :cond_1
    const-string v13, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 302
    .local v12, title:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 303
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 306
    :cond_2
    const-string v13, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, location:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 308
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 311
    :cond_3
    const-string v13, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, description:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 313
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 316
    :cond_4
    const-string v13, "availability"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 317
    .local v3, availability:I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_5

    .line 318
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 321
    :cond_5
    const-string v13, "accessLevel"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 322
    .local v1, accessLevel:I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_7

    .line 323
    if-lez v1, :cond_6

    .line 326
    add-int/lit8 v1, v1, -0x1

    .line 328
    :cond_6
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 331
    :cond_7
    const-string v13, "rrule"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 332
    .local v11, rrule:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 333
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 336
    :cond_8
    const-string v13, "android.intent.extra.EMAIL"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, emails:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 338
    const-string v13, "[ ,;]"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, emailArray:[Ljava/lang/String;
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v5, v2, v8

    .line 340
    .local v5, email:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "@"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 341
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    new-instance v14, Lcom/android/calendar/CalendarEventModel$Attendee;

    const-string v15, ""

    invoke-direct {v14, v15, v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v5, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    .locals 2
    .parameter "attendee"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public addAttendees(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)V
    .locals 6
    .parameter "attendees"
    .parameter "validator"

    .prologue
    .line 436
    invoke-static {p1, p2}, Lcom/android/calendar/event/EditEventHelper;->getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 438
    .local v1, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    monitor-enter p0

    .line 439
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 440
    .local v0, address:Landroid/text/util/Rfc822Token;
    new-instance v2, Lcom/android/calendar/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v2, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    iget-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 444
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 446
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    .end local v2           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    return-void
.end method

.method protected checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 5
    .parameter "originalModel"

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eq v1, v2, :cond_1

    .line 840
    :cond_0
    :goto_0
    return v0

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_e

    .line 697
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 704
    :cond_2
    iget-wide v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v3, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 708
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-ne v1, v2, :cond_0

    .line 711
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-ne v1, v2, :cond_0

    .line 714
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    if-ne v1, v2, :cond_0

    .line 717
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-ne v1, v2, :cond_0

    .line 720
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    if-ne v1, v2, :cond_0

    .line 723
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-ne v1, v2, :cond_0

    .line 726
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-ne v1, v2, :cond_0

    .line 729
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-ne v1, v2, :cond_0

    .line 732
    iget-wide v1, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v3, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 735
    iget-boolean v1, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    iget-boolean v2, p1, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-ne v1, v2, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 740
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 747
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v1, :cond_10

    .line 748
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 755
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v1, :cond_11

    .line 756
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 763
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 764
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 771
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v1, :cond_13

    .line 772
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 779
    :cond_7
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    if-ne v1, v2, :cond_0

    .line 782
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    if-ne v1, v2, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 786
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 793
    :cond_8
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 794
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 801
    :cond_9
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 802
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 809
    :cond_a
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 810
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 817
    :cond_b
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 818
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 825
    :cond_c
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    if-ne v1, v2, :cond_0

    .line 829
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 830
    iget-object v1, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 837
    :cond_d
    iget v1, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    iget v2, p1, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    if-ne v1, v2, :cond_0

    .line 840
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 700
    :cond_e
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 743
    :cond_f
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 751
    :cond_10
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 759
    :cond_11
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 767
    :cond_12
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 775
    :cond_13
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 789
    :cond_14
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 797
    :cond_15
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 805
    :cond_16
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 813
    :cond_17
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 821
    :cond_18
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    .line 833
    :cond_19
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 377
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 378
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 379
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 381
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    .line 382
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mAccountName:Ljava/lang/String;

    .line 384
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 385
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    .line 386
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    .line 387
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 389
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 390
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 391
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 392
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 393
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 394
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 395
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 396
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 398
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 399
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 400
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 401
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 402
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 403
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 404
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    .line 405
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 406
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 408
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 409
    iput v5, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 410
    iput v5, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 411
    iput-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    .line 412
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 413
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 414
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    .line 416
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 417
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    .line 418
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    .line 419
    iput v2, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 420
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 421
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 422
    iput-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 423
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 424
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 425
    iput-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 428
    iget-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 429
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    if-ne p0, p1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v1

    .line 519
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 520
    goto :goto_0

    .line 522
    :cond_2
    instance-of v3, p1, Lcom/android/calendar/CalendarEventModel;

    if-nez v3, :cond_3

    move v1, v2

    .line 523
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 526
    check-cast v0, Lcom/android/calendar/CalendarEventModel;

    .line 527
    .local v0, other:Lcom/android/calendar/CalendarEventModel;
    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarEventModel;->checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 528
    goto :goto_0

    .line 531
    :cond_4
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 532
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 533
    goto :goto_0

    .line 535
    :cond_5
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 536
    goto :goto_0

    .line 539
    :cond_6
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 540
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 541
    goto :goto_0

    .line 543
    :cond_7
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 544
    goto :goto_0

    .line 547
    :cond_8
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 548
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 549
    goto :goto_0

    .line 551
    :cond_9
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 552
    goto :goto_0

    .line 555
    :cond_a
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 556
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 557
    goto :goto_0

    .line 559
    :cond_b
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 560
    goto :goto_0

    .line 563
    :cond_c
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    move v1, v2

    .line 564
    goto :goto_0

    .line 566
    :cond_d
    iget-boolean v3, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    iget-boolean v4, v0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    if-eq v3, v4, :cond_e

    move v1, v2

    .line 567
    goto :goto_0

    .line 569
    :cond_e
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    move v1, v2

    .line 570
    goto/16 :goto_0

    .line 573
    :cond_f
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10

    move v1, v2

    .line 574
    goto/16 :goto_0

    .line 576
    :cond_10
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11

    move v1, v2

    .line 577
    goto/16 :goto_0

    .line 580
    :cond_11
    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_12

    move v1, v2

    .line 581
    goto/16 :goto_0

    .line 584
    :cond_12
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 585
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v3, :cond_14

    move v1, v2

    .line 586
    goto/16 :goto_0

    .line 588
    :cond_13
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    move v1, v2

    .line 589
    goto/16 :goto_0

    .line 592
    :cond_14
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v3, :cond_15

    .line 593
    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 594
    goto/16 :goto_0

    .line 596
    :cond_15
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 597
    goto/16 :goto_0
.end method

.method public getAttendeesString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v1, b:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 456
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v4, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 457
    .local v4, name:Ljava/lang/String;
    iget-object v2, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 458
    .local v2, email:Ljava/lang/String;
    iget v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, status:Ljava/lang/String;
    const-string v6, "name:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v6, " email:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v6, " status:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 463
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v2           #email:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    const/4 v5, 0x0

    .line 468
    const/16 v0, 0x1f

    .line 469
    .local v0, prime:I
    const/4 v1, 0x1

    .line 470
    .local v1, result:I
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 471
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1

    move v2, v5

    :goto_1
    add-int v1, v6, v2

    .line 472
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v8, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 473
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v5

    :goto_2
    add-int v1, v6, v2

    .line 474
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v5

    :goto_3
    add-int v1, v6, v2

    .line 475
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v8, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 476
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanInviteOthers:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v6, v2

    .line 477
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v6, v2

    .line 478
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanSeeGuests:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_6
    add-int v1, v6, v2

    .line 479
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_7
    add-int v1, v6, v2

    .line 480
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_8
    add-int v1, v6, v2

    .line 481
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    add-int v1, v2, v6

    .line 482
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_9
    add-int v1, v6, v2

    .line 483
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v2, :cond_a

    move v2, v3

    :goto_a
    add-int v1, v6, v2

    .line 484
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v8, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 485
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    if-eqz v2, :cond_b

    move v2, v3

    :goto_b
    add-int v1, v6, v2

    .line 486
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v6, :cond_c

    :goto_c
    add-int v1, v2, v3

    .line 487
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v5

    :goto_d
    add-int v1, v3, v2

    .line 488
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v5

    :goto_e
    add-int v1, v3, v2

    .line 489
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    if-nez v2, :cond_f

    move v2, v5

    :goto_f
    add-int v1, v3, v2

    .line 490
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v6, v10

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 491
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v5

    :goto_10
    add-int v1, v3, v2

    .line 492
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    ushr-long/2addr v6, v10

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 493
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    ushr-long/2addr v6, v10

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 494
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v2, :cond_11

    move v2, v5

    :goto_11
    add-int v1, v3, v2

    .line 495
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-nez v2, :cond_12

    move v2, v5

    :goto_12
    add-int v1, v3, v2

    .line 496
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    if-nez v2, :cond_13

    move v2, v5

    :goto_13
    add-int v1, v3, v2

    .line 497
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v5

    :goto_14
    add-int v1, v3, v2

    .line 498
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    add-int v1, v2, v3

    .line 499
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    add-int v1, v2, v3

    .line 500
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    ushr-long/2addr v6, v10

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 501
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v5

    :goto_15
    add-int v1, v3, v2

    .line 502
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v5

    :goto_16
    add-int v1, v3, v2

    .line 503
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v5

    :goto_17
    add-int v1, v3, v2

    .line 504
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    if-nez v2, :cond_18

    move v2, v5

    :goto_18
    add-int v1, v3, v2

    .line 505
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    if-nez v2, :cond_19

    move v2, v5

    :goto_19
    add-int v1, v3, v2

    .line 506
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_1a

    move v2, v5

    :goto_1a
    add-int v1, v3, v2

    .line 507
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    add-int v1, v2, v3

    .line 508
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-nez v3, :cond_1b

    :goto_1b
    add-int v1, v2, v5

    .line 509
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    add-int v1, v2, v3

    .line 510
    return v1

    :cond_0
    move v2, v4

    .line 470
    goto/16 :goto_0

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 474
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :cond_4
    move v2, v4

    .line 476
    goto/16 :goto_4

    :cond_5
    move v2, v4

    .line 477
    goto/16 :goto_5

    :cond_6
    move v2, v4

    .line 478
    goto/16 :goto_6

    :cond_7
    move v2, v4

    .line 479
    goto/16 :goto_7

    :cond_8
    move v2, v4

    .line 480
    goto/16 :goto_8

    :cond_9
    move v2, v4

    .line 482
    goto/16 :goto_9

    :cond_a
    move v2, v4

    .line 483
    goto/16 :goto_a

    :cond_b
    move v2, v4

    .line 485
    goto/16 :goto_b

    :cond_c
    move v3, v4

    .line 486
    goto/16 :goto_c

    .line 487
    :cond_d
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 488
    :cond_e
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 489
    :cond_f
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalAllDay:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 491
    :cond_10
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 494
    :cond_11
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 495
    :cond_12
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 496
    :cond_13
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 497
    :cond_14
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 501
    :cond_15
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 502
    :cond_16
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_16

    .line 503
    :cond_17
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_17

    .line 504
    :cond_18
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_18

    .line 505
    :cond_19
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_19

    .line 506
    :cond_1a
    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1a

    .line 508
    :cond_1b
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto/16 :goto_1b
.end method

.method public isUnchanged(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 8
    .parameter "originalModel"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 609
    if-ne p0, p1, :cond_1

    move v2, v3

    .line 680
    :cond_0
    :goto_0
    return v2

    .line 612
    :cond_1
    if-eqz p1, :cond_0

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarEventModel;->checkOriginalModelFields(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 621
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 629
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 636
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 637
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 645
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    :cond_5
    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 655
    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    iget-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 661
    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 665
    :cond_6
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 667
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 668
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_7
    move v1, v3

    .line 670
    .local v1, syncIdNotReferenced:Z
    :goto_1
    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    iget-wide v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    iget-wide v6, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_f

    :cond_8
    move v0, v3

    .line 672
    .local v0, localIdNotReferenced:Z
    :goto_2
    if-eqz v1, :cond_9

    if-nez v0, :cond_0

    .end local v0           #localIdNotReferenced:Z
    .end local v1           #syncIdNotReferenced:Z
    :cond_9
    move v2, v3

    .line 680
    goto/16 :goto_0

    .line 624
    :cond_a
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 632
    :cond_b
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    .line 640
    :cond_c
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    .line 648
    :cond_d
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_0

    :cond_e
    move v1, v2

    .line 668
    goto :goto_1

    .restart local v1       #syncIdNotReferenced:Z
    :cond_f
    move v0, v2

    .line 670
    goto :goto_2

    .line 676
    .end local v1           #syncIdNotReferenced:Z
    :cond_10
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_0
.end method

.method public isValid()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 351
    iget-wide v1, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalizeReminders()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 849
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_1

    .line 867
    :cond_0
    return v5

    .line 854
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 857
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 858
    .local v2, prev:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 859
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 860
    .local v0, cur:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    invoke-virtual {v2, v0}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 862
    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 864
    :cond_2
    move-object v2, v0

    .line 858
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
