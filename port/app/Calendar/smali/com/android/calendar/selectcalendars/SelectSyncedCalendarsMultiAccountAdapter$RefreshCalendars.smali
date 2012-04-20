.class Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;
.super Ljava/lang/Object;
.source "SelectSyncedCalendarsMultiAccountAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshCalendars"
.end annotation


# instance fields
.field mAccount:Ljava/lang/String;

.field mAccountType:Ljava/lang/String;

.field mToken:I

.field final synthetic this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "token"
    .parameter "cookie"
    .parameter "accountType"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput p2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mToken:I

    .line 363
    iput-object p3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mAccount:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mAccountType:Ljava/lang/String;

    .line 365
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 368
    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$400()Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->cancelOperation(I)V

    .line 370
    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    #getter for: Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$500(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mToken:I

    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mAccountType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;-><init>(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    :cond_0
    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$400()Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mToken:I

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mAccount:Ljava/lang/String;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$600()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "account_name=? AND account_type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mAccount:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->mAccountType:Ljava/lang/String;

    aput-object v8, v6, v7

    const-string v7, "\"primary\" DESC,calendar_displayName COLLATE NOCASE"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method
