.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;
.super Landroid/app/ListFragment;
.source "SelectCalendarsSyncFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountsButton:Landroid/widget/Button;

.field private mArgs:[Ljava/lang/String;

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mSyncStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 104
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 125
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    invoke-direct {v1, p1}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 127
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    .line 133
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 166
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 167
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->PROJECTION:[Ljava/lang/String;

    const-string v4, "account_name=? AND account_type=?"

    iget-object v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const-string v6, "\"primary\" DESC,calendar_displayName COLLATE NOCASE"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 84
    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, v:Landroid/view/View;
    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    .line 89
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .line 174
    .local v0, adapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .end local v0           #adapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 179
    .restart local v0       #adapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    return-void
.end method

.method public onPause()V
    .locals 17

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    .line 138
    .local v14, listAdapter:Landroid/widget/ListAdapter;
    if-eqz v14, :cond_3

    .line 139
    check-cast v14, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .end local v14           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v14}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->getChanges()Ljava/util/HashMap;

    move-result-object v10

    .line 141
    .local v10, changes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;>;"
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 142
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 143
    .local v15, row:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    iget-boolean v1, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    iget-boolean v2, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    if-eq v1, v2, :cond_0

    .line 146
    iget-wide v12, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    .line 147
    .local v12, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    long-to-int v2, v12

    invoke-virtual {v1, v2}, Lcom/android/calendar/AsyncQueryService;->cancelOperation(I)I

    .line 149
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 150
    .local v4, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v5, values:Landroid/content/ContentValues;
    iget-boolean v1, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-eqz v1, :cond_1

    const/16 v16, 0x1

    .line 153
    .local v16, synced:I
    :goto_1
    const-string v1, "sync_events"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v1, "visible"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    long-to-int v2, v12

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    goto :goto_0

    .line 152
    .end local v16           #synced:I
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 157
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v12           #id:J
    .end local v15           #row:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    :cond_2
    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 160
    .end local v10           #changes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-super/range {p0 .. p0}, Landroid/app/ListFragment;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 108
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 109
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    const-string v2, "com.android.calendar"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    const v2, 0x7f0c001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    const v2, 0x7f0c001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    .end local v0           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
