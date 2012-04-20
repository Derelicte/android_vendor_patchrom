.class public Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "SelectSyncedCalendarsMultiAccountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;,
        Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

.field private static mChildrenCursors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsDuplicateName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mNotSyncedText:Ljava/lang/String;

.field private static mRefresh:Z

.field private static final mStopRefreshing:Ljava/lang/Runnable;

.field private static mSyncedText:Ljava/lang/String;

.field private static mUpdateToken:I


# instance fields
.field private final mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mCalendarChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarInitialStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNumAccounts:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 63
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$1;

    invoke-direct {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$1;-><init>()V

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mChildrenCursors:Ljava/util/Map;

    .line 86
    const/16 v0, 0x3e8

    sput v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    .line 91
    sput-boolean v3, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)V
    .locals 4
    .parameter "context"
    .parameter "acctsCursor"
    .parameter "act"

    .prologue
    .line 197
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarInitialStates:Ljava/util/Map;

    .line 198
    const v1, 0x7f0c0019

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mSyncedText:Ljava/lang/String;

    .line 199
    const v1, 0x7f0c001a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNotSyncedText:Ljava/lang/String;

    .line 201
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 203
    iput-object p3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    .line 204
    sget-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;-><init>(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    .line 208
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNumAccounts:I

    .line 209
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNumAccounts:I

    if-nez v1, :cond_1

    .line 212
    const-string v1, "Calendar"

    const-string v2, "SelectCalendarsAdapter: No accounts were returned!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-virtual {v1}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;

    .line 220
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    .line 221
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mChildrenCursors:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 260
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 288
    const v7, 0x7f100030

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 289
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, name:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, owner:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-virtual {v7}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 292
    .local v5, res:Landroid/content/res/Resources;
    sget-object v7, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5, v3}, Lcom/android/calendar/Utils;->transformDisplayNameIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5, v4}, Lcom/android/calendar/Utils;->transformOwnerAccountIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    :goto_0
    const v7, 0x7f100031

    invoke-static {p1, v7, v3}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 305
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 306
    .local v1, id:J
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 307
    .local v6, sync:Ljava/lang/Boolean;
    if-nez v6, :cond_0

    .line 308
    const/4 v7, 0x6

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 309
    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarInitialStates:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    const v7, 0x7f100033

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 313
    .local v0, button:Landroid/widget/CheckBox;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 314
    const v8, 0x7f100032

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mSyncedText:Ljava/lang/String;

    :goto_2
    invoke-static {p1, v8, v7}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 316
    const v7, 0x7f100031

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 317
    const v7, 0x7f100033

    invoke-virtual {p1, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 318
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void

    .line 300
    .end local v0           #button:Landroid/widget/CheckBox;
    .end local v1           #id:J
    .end local v6           #sync:Ljava/lang/Boolean;
    :cond_1
    invoke-static {v5, v3}, Lcom/android/calendar/Utils;->transformDisplayNameIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 308
    .restart local v1       #id:J
    .restart local v6       #sync:Ljava/lang/Boolean;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 314
    .restart local v0       #button:Landroid/widget/CheckBox;
    :cond_3
    sget-object v7, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNotSyncedText:Ljava/lang/String;

    goto :goto_2
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 323
    const-string v4, "account_name"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 324
    .local v1, accountColumn:I
    const-string v4, "account_type"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 325
    .local v3, accountTypeColumn:I
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, account:Ljava/lang/String;
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, accountType:Ljava/lang/String;
    const v4, 0x7f100004

    invoke-static {p1, v4, v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 328
    const v4, 0x7f100005

    invoke-virtual {p0, v2}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 329
    return-void
.end method

.method public cancelRefreshStopDelay()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;

    sget-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public doSaveAction()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x3e8

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 238
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    sget v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->cancelOperation(I)V

    .line 239
    sget v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    .line 242
    sget v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    if-ge v0, v2, :cond_0

    .line 243
    sput v2, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 247
    .local v7, changeKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 249
    .local v8, id:J
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 251
    .local v10, newSynced:Z
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 252
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "visible"

    if-eqz v10, :cond_1

    move v0, v11

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v1, "sync_events"

    if-eqz v10, :cond_2

    move v0, v11

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    sget v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v12

    .line 253
    goto :goto_1

    :cond_2
    move v0, v12

    .line 254
    goto :goto_2

    .line 257
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v8           #id:J
    .end local v10           #newSynced:Z
    :cond_3
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 7
    .parameter "groupCursor"

    .prologue
    .line 333
    const-string v5, "account_name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 334
    .local v1, accountColumn:I
    const-string v5, "account_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 335
    .local v3, accountTypeColumn:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, account:Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, accountType:Ljava/lang/String;
    sget-object v5, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mChildrenCursors:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 339
    .local v4, childCursor:Landroid/database/Cursor;
    new-instance v5, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-direct {v5, p0, v6, v0, v2}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;-><init>(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->run()V

    .line 340
    return-object v4
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 273
    const/4 v3, 0x0

    .line 274
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 277
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 278
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 283
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label for account type , type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 174
    const v4, 0x7f100031

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 176
    .local v0, id:J
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarInitialStates:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 177
    .local v2, initialState:Z
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    .local v3, newState:Z
    :goto_0
    if-ne v3, v2, :cond_3

    .line 186
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :goto_1
    const v4, 0x7f100033

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 192
    const v5, 0x7f100032

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mSyncedText:Ljava/lang/String;

    :goto_2
    invoke-static {p1, v5, v4}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 193
    return-void

    .end local v3           #newState:Z
    :cond_0
    move v3, v5

    .line 179
    goto :goto_0

    .line 182
    :cond_1
    if-nez v2, :cond_2

    .restart local v3       #newState:Z
    :goto_3
    goto :goto_0

    .end local v3           #newState:Z
    :cond_2
    move v3, v5

    goto :goto_3

    .line 188
    .restart local v3       #newState:Z
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 192
    :cond_4
    sget-object v4, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNotSyncedText:Ljava/lang/String;

    goto :goto_2
.end method

.method public startRefreshStopDelay()V
    .locals 4

    .prologue
    .line 224
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    .line 225
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;

    sget-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    return-void
.end method
