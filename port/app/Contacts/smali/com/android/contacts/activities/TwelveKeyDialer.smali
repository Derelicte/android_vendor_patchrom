.class public Lcom/android/contacts/activities/TwelveKeyDialer;
.super Landroid/app/Activity;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/TwelveKeyDialer$7;,
        Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;,
        Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;,
        Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;
    }
.end annotation


# static fields
.field public static IS_SLIDE_DOWN:Z


# instance fields
.field private blnActivityRuning:Z

.field private blnActivityWindowFocused:Z

.field private blnSoftKeyVisibility:Z

.field private mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

.field private mAsyncDataLoader:Lcom/android/contacts/calllog/AsyncDataLoader;

.field private mCallPhone:Landroid/view/View;

.field private mChoiceModeCallback:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

.field private mContentView:Landroid/view/View;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialFromT9Result:Z

.field private mDialHideContainer:Landroid/view/View;

.field private mDialpadBackground:Lcom/android/contacts/dialpad/DialerButtons;

.field private mDialpadButtons:Landroid/view/View;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mDigitsLocation:Landroid/widget/TextView;

.field private mDigitsTextChanged:Z

.field private mDirectDialNumber:Ljava/lang/String;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

.field private mIsAddCallMode:Z

.field private mIsTelocationEnable:Z

.field private mList:Landroid/widget/EditableListView;

.field private mMenuAntiSpam:Landroid/view/MenuItem;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mMenuFilter:Landroid/view/MenuItem;

.field private mMenuPaste:Landroid/view/MenuItem;

.field private mQueryHandler:Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTipHideSoft:Landroid/view/View;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mYellowPageCountView:Landroid/widget/TextView;

.field private mYellowPageHeaderView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->None:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    .line 1414
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/TwelveKeyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/AsyncDataLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAsyncDataLoader:Lcom/android/contacts/calllog/AsyncDataLoader;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/TwelveKeyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mIsTelocationEnable:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/TwelveKeyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/contacts/activities/TwelveKeyDialer;Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;)Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/activities/TwelveKeyDialer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/TwelveKeyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/TwelveKeyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsTextChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/contacts/activities/TwelveKeyDialer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsTextChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkIfBackFromFromT9Dial()V
    .locals 2

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialFromT9Result:Z

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialFromT9Result:Z

    .line 767
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/DialerListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 769
    :cond_0
    return-void
.end method

.method private goToPeopleActivity()V
    .locals 2

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->finish()V

    .line 1093
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1094
    return-void
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 971
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 972
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 973
    return-void
.end method

.method private phoneIsCdma()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1239
    .line 1241
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1242
    if-eqz v1, :cond_0

    .line 1243
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1248
    :cond_0
    :goto_0
    return v0

    .line 1245
    :catch_0
    move-exception v1

    .line 1246
    const-string v2, "TwelveKeyDialer"

    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1224
    .line 1226
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1227
    if-eqz v1, :cond_0

    .line 1228
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1232
    :cond_0
    :goto_0
    return v0

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    const-string v2, "TwelveKeyDialer"

    const-string v3, "phone.isIdle() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 1255
    const/4 v0, 0x0

    .line 1257
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1258
    if-eqz v1, :cond_0

    .line 1259
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1263
    :cond_0
    :goto_0
    return v0

    .line 1260
    :catch_0
    move-exception v1

    .line 1261
    const-string v2, "TwelveKeyDialer"

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetNewCallsFlag()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .local v7, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string v0, " AND new=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 351
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mQueryHandler:Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;

    const/16 v1, 0x36

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private resolveIntent()Z
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 646
    const/4 v9, 0x0

    .line 650
    .local v9, ignoreState:Z
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 658
    .local v10, intent:Landroid/content/Intent;
    :goto_0
    iput-boolean v13, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mIsAddCallMode:Z

    .line 661
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 662
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    .line 669
    const-string v0, "add_call_mode"

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mIsAddCallMode:Z

    .line 670
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 671
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_1

    .line 672
    const-string v0, "tel"

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 675
    .local v8, data:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/TwelveKeyDialer;->setFormattedDigits(Ljava/lang/String;)V

    .line 696
    .end local v8           #data:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    return v9

    .line 653
    .end local v6           #action:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .restart local v10       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 677
    .restart local v6       #action:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    .line 678
    .local v11, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 684
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 685
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 687
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->setFormattedDigits(Ljava/lang/String;)V

    .line 689
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 737
    const v1, 0x7f07014e

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 738
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 741
    const v1, 0x7f070157

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 742
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 745
    const v1, 0x7f07014f

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    const v1, 0x7f070150

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    const v1, 0x7f070151

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    const v1, 0x7f070152

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    const v1, 0x7f070153

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    const v1, 0x7f070154

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    const v1, 0x7f070155

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    const v1, 0x7f070156

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    const v1, 0x7f070158

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    const v1, 0x7f0700b1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 756
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 758
    return-void
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1329
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 1334
    .local v0, digitsNotEmpty:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1335
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mCallPhone:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1343
    :goto_1
    return-void

    .end local v0           #digitsNotEmpty:Z
    :cond_0
    move v0, v2

    .line 1329
    goto :goto_0

    .line 1341
    .restart local v0       #digitsNotEmpty:Z
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mCallPhone:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .parameter "input"

    .prologue
    const/16 v0, 0x65

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {p0, v2, v3}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    .line 310
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 311
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 312
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;

    const v3, 0x7f0b01e5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 315
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 316
    .local v10, digits:Ljava/lang/CharSequence;
    const/4 v12, 0x1

    .line 317
    .local v12, valid:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 318
    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 319
    .local v9, c:C
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2c

    if-eq v9, v2, :cond_1

    if-nez v11, :cond_2

    const/16 v2, 0x23

    if-eq v9, v2, :cond_1

    const/16 v2, 0x2b

    if-ne v9, v2, :cond_2

    .line 317
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 322
    :cond_2
    const/4 v12, 0x0

    .line 326
    .end local v9           #c:C
    :cond_3
    if-eqz v12, :cond_4

    .line 327
    iput-boolean v5, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsTextChanged:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startQuery()V

    .line 332
    :cond_4
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->cancelAsyncTelocationQuery(I)V

    .line 334
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mIsTelocationEnable:Z

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p0

    move-object v6, p0

    invoke-static/range {v0 .. v8}, Lmiui/telephony/PhoneNumberUtils;->queryTelocationStringAsync(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lmiui/telephony/PhoneNumberUtils$TelocationQueryListener;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 342
    .end local v10           #digits:Ljava/lang/CharSequence;
    .end local v11           #i:I
    .end local v12           #valid:Z
    :goto_1
    return-void

    .line 338
    :cond_5
    iput-boolean v5, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsTextChanged:Z

    .line 339
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startQuery()V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 294
    return-void
.end method

.method callVoicemail()V
    .locals 5

    .prologue
    .line 1129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1131
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1132
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1133
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1134
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->finish()V

    .line 1135
    return-void
.end method

.method dialButtonPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 1138
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1139
    const/4 v1, 0x0

    .line 1140
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1142
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->phoneIsCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1146
    const-string v1, "tel"

    const-string v2, ""

    invoke-static {v1, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1147
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1163
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1164
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1165
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1177
    if-nez v0, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->finish()V

    .line 1180
    :cond_0
    :goto_1
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1157
    :cond_2
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_1

    .line 1161
    :cond_3
    const-string v0, "tel"

    invoke-static {v0, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v0, v1

    goto :goto_0
.end method

.method public doFilter(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startQuery()V

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableEditMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isLongClickable()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p1}, Landroid/widget/EditableListView;->setLongClickable(Z)V

    .line 1716
    :cond_0
    return-void
.end method

.method public getAsyncDataLoader()Lcom/android/contacts/calllog/AsyncDataLoader;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAsyncDataLoader:Lcom/android/contacts/calllog/AsyncDataLoader;

    return-object v0
.end method

.method protected getContentViewResource()I
    .locals 1

    .prologue
    .line 642
    const v0, 0x7f0400a0

    return v0
.end method

.method public getFilterText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isListItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p1}, Landroid/widget/EditableListView;->isItemChecked(I)Z

    move-result v0

    .line 1722
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1005
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1089
    :goto_0
    return-void

    .line 1007
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1008
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1012
    :sswitch_1
    invoke-direct {p0, v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1013
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1017
    :sswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1018
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1022
    :sswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1023
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1027
    :sswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1028
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1032
    :sswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1033
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1037
    :sswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1038
    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1042
    :sswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1043
    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1047
    :sswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1048
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1052
    :sswitch_9
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1053
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1057
    :sswitch_a
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1058
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1062
    :sswitch_b
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    .line 1063
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->playTone(I)V

    goto :goto_0

    .line 1068
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->dialButtonPressed()V

    goto :goto_0

    .line 1072
    :sswitch_d
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1076
    :sswitch_e
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    goto :goto_0

    .line 1080
    :sswitch_f
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    goto/16 :goto_0

    .line 1085
    :sswitch_10
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->goToPeopleActivity()V

    goto/16 :goto_0

    .line 1005
    :sswitch_data_0
    .sparse-switch
        0x1020004 -> :sswitch_f
        0x7f0700b1 -> :sswitch_9
        0x7f07014a -> :sswitch_10
        0x7f07014b -> :sswitch_e
        0x7f07014e -> :sswitch_0
        0x7f07014f -> :sswitch_1
        0x7f070150 -> :sswitch_2
        0x7f070151 -> :sswitch_3
        0x7f070152 -> :sswitch_4
        0x7f070153 -> :sswitch_5
        0x7f070154 -> :sswitch_6
        0x7f070155 -> :sswitch_7
        0x7f070156 -> :sswitch_8
        0x7f070157 -> :sswitch_a
        0x7f070158 -> :sswitch_b
        0x7f07015a -> :sswitch_10
        0x7f07015b -> :sswitch_c
        0x7f07015c -> :sswitch_d
    .end sparse-switch
.end method

.method public onComplete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9
    .parameter "cookie1"
    .parameter "cookie2"
    .parameter "cookie3"
    .parameter "cookie4"
    .parameter "location"

    .prologue
    const/16 v7, 0x8

    .line 1728
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v6, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1729
    iget-object v8, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1734
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1735
    .local v4, parentWidth:I
    if-nez v4, :cond_0

    .line 1738
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1740
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int v6, v4, v6

    iget-object v8, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v6, v8

    .line 1742
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 1743
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v8, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int v0, v6, v8

    .line 1745
    .local v0, digitsRequestWidth:I
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1747
    .local v2, locationRequestWidth:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1748
    .local v5, width:I
    sub-int v1, v3, v5

    .line 1750
    .local v1, leftWidth:I
    const/16 v6, 0x3c

    if-ge v1, v6, :cond_2

    .line 1751
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setWidth(I)V

    .line 1752
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1765
    .end local v0           #digitsRequestWidth:I
    .end local v1           #leftWidth:I
    .end local v2           #locationRequestWidth:I
    .end local v5           #width:I
    :goto_1
    return-void

    .line 1729
    .end local v3           #maxWidth:I
    .end local v4           #parentWidth:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1754
    .restart local v0       #digitsRequestWidth:I
    .restart local v1       #leftWidth:I
    .restart local v2       #locationRequestWidth:I
    .restart local v3       #maxWidth:I
    .restart local v4       #parentWidth:I
    .restart local v5       #width:I
    :cond_2
    add-int v6, v2, v0

    if-le v6, v3, :cond_3

    .line 1755
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 1756
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_1

    .line 1759
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setWidth(I)V

    .line 1760
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_1

    .line 1763
    .end local v0           #digitsRequestWidth:I
    .end local v1           #leftWidth:I
    .end local v2           #locationRequestWidth:I
    .end local v5           #width:I
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setWidth(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 504
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getContentViewResource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->setContentView(I)V

    .line 507
    const v2, 0x7f070145

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mContentView:Landroid/view/View;

    .line 508
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditableListView;

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    .line 509
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30a001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 511
    .local v0, touchPadding:I
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, v0, v0}, Landroid/widget/EditableListView;->setTouchPadding(II)V

    .line 512
    const v2, 0x7f070161

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageHeaderView:Landroid/view/View;

    .line 513
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageHeaderView:Landroid/view/View;

    const v3, 0x7f070162

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageCountView:Landroid/widget/TextView;

    .line 515
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mYellowPageHeaderView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 516
    new-instance v2, Lcom/android/contacts/calllog/AsyncDataLoader;

    invoke-direct {v2, p0}, Lcom/android/contacts/calllog/AsyncDataLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAsyncDataLoader:Lcom/android/contacts/calllog/AsyncDataLoader;

    .line 517
    new-instance v2, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mQueryHandler:Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;

    .line 518
    const v2, 0x1020004

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyView:Landroid/view/View;

    .line 519
    const v2, 0x7f0700be

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;

    .line 520
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 522
    new-instance v2, Lcom/android/contacts/calllog/DialerListAdapter;

    invoke-direct {v2, p0}, Lcom/android/contacts/calllog/DialerListAdapter;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

    .line 523
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 525
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, v6}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 526
    new-instance v2, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer;Landroid/app/Activity;Landroid/widget/EditableListView;)V

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mChoiceModeCallback:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    .line 527
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mChoiceModeCallback:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    const v3, 0x7f100002

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->setSplitActionBarMenuId(I)V

    .line 528
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mChoiceModeCallback:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 529
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 531
    const v2, 0x7f07014d

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/dialpad/DialerButtons;

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadBackground:Lcom/android/contacts/dialpad/DialerButtons;

    .line 532
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadBackground:Lcom/android/contacts/dialpad/DialerButtons;

    invoke-virtual {v2, p0}, Lcom/android/contacts/dialpad/DialerButtons;->setTwelveKeyDialer(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    .line 533
    const v2, 0x7f07014c

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    .line 534
    const v2, 0x7f070146

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    .line 535
    const v2, 0x7f070147

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    .line 536
    const v2, 0x7f070148

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsLocation:Landroid/widget/TextView;

    .line 537
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 538
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 539
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 541
    iput-boolean v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigitsTextChanged:Z

    .line 543
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "dialer_activity_displayed"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dialer_activity_displayed"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 547
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/activities/TwelveKeyDialer$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$1;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 560
    :cond_0
    const v2, 0x7f07014e

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 561
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 562
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->setupKeypad()V

    .line 565
    :cond_1
    const v2, 0x7f07015b

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mCallPhone:Landroid/view/View;

    .line 566
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mCallPhone:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    const v2, 0x7f070149

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    .line 568
    const v2, 0x7f07015a

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    const v2, 0x7f07014a

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    const v2, 0x7f07014b

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mTipHideSoft:Landroid/view/View;

    .line 571
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mTipHideSoft:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    const v2, 0x7f07015c

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDelete:Landroid/view/View;

    .line 574
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 577
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 580
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    .line 581
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 582
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 583
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 585
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->resolveIntent()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 586
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 589
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    new-instance v3, Lcom/android/contacts/activities/TwelveKeyDialer$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$2;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 617
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, p0}, Landroid/widget/EditableListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 618
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v2, v4}, Landroid/widget/EditableListView;->setDividerHeight(I)V

    .line 622
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    new-instance v3, Lcom/android/contacts/activities/TwelveKeyDialer$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$3;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 635
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 877
    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 878
    const v0, 0x7f070178

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuDelete:Landroid/view/MenuItem;

    .line 879
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    invoke-virtual {v1}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->getDeleteMenuTextId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 880
    const v0, 0x7f070177

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuFilter:Landroid/view/MenuItem;

    .line 881
    const v0, 0x7f070176

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuPaste:Landroid/view/MenuItem;

    .line 882
    const v0, 0x7f070179

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuAntiSpam:Landroid/view/MenuItem;

    .line 883
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 494
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAsyncDataLoader:Lcom/android/contacts/calllog/AsyncDataLoader;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/AsyncDataLoader;->stop()V

    .line 496
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/DialerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 497
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 989
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 991
    :sswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 992
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    goto :goto_0

    .line 996
    :sswitch_1
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    if-nez v0, :cond_0

    .line 997
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    goto :goto_0

    .line 989
    nop

    :sswitch_data_0
    .sparse-switch
        0x102000a -> :sswitch_0
        0x7f070147 -> :sswitch_1
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1658
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/DialerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1659
    if-eqz v7, :cond_0

    invoke-interface {v7, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1664
    const-wide/16 v0, -0x63

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x8

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 1670
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1673
    invoke-static {v1}, Lmiui/telephony/CallerInfo;->getPresentation(Ljava/lang/String;)I

    move-result v0

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v4, :cond_0

    .line 1678
    const-wide/16 v4, -0x7

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 1679
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1680
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1681
    const-string v3, "phone"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1683
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/contacts/ContactsUtils;->processPackageScope(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1684
    :cond_2
    const-wide/16 v4, -0x6

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 1685
    const-string v0, "tel"

    invoke-static {v0, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1686
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1687
    const-string v0, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1689
    const-string v3, "phone"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1691
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/contacts/ContactsUtils;->processPackageScope(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1692
    :cond_3
    const-wide/16 v4, -0x9

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 1693
    const-string v0, "smsto"

    invoke-static {v0, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1694
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1695
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1697
    :cond_4
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1698
    const/16 v2, 0x11

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1699
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1700
    const/16 v5, 0x13

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1701
    invoke-static/range {v0 .. v6}, Lcom/android/contacts/calllog/IntentProvider;->getCallIntentProvider(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1703
    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    .line 1705
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

    invoke-virtual {v0, v7}, Lcom/android/contacts/calllog/DialerListAdapter;->isCallRecord(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    iput-boolean v8, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialFromT9Result:Z

    goto/16 :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 976
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 984
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 978
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->dialButtonPressed()V

    .line 980
    const/4 v0, 0x1

    goto :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x7f070147
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 911
    packed-switch p1, :pswitch_data_0

    .line 934
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 913
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 914
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 916
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 919
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 920
    :catch_0
    move-exception v1

    goto :goto_0

    .line 926
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 927
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->callVoicemail()V

    goto :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 939
    packed-switch p1, :pswitch_data_0

    .line 967
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 944
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->phoneIsCdma()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mIsAddCallMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->finish()V

    .line 963
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->dialButtonPressed()V

    .line 964
    const/4 v0, 0x1

    goto :goto_0

    .line 939
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1098
    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1099
    .local v0, digits:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1100
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    move v2, v3

    .line 1125
    :goto_0
    return v2

    .line 1102
    :sswitch_0
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1106
    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1110
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->callVoicemail()V

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1114
    goto :goto_0

    .line 1117
    :sswitch_2
    const/16 v3, 0x51

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1121
    :sswitch_3
    const/16 v3, 0x37

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->keyPressed(I)V

    goto :goto_0

    .line 1100
    :sswitch_data_0
    .sparse-switch
        0x7f0700b1 -> :sswitch_3
        0x7f07014e -> :sswitch_1
        0x7f070157 -> :sswitch_2
        0x7f07015c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/TwelveKeyDialer;->setIntent(Landroid/content/Intent;)V

    .line 718
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->resolveIntent()Z

    .line 719
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1321
    :goto_0
    return v0

    .line 1274
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->goToPeopleActivity()V

    move v0, v1

    .line 1275
    goto :goto_0

    .line 1277
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v2, v3, v4, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move v0, v1

    .line 1280
    goto :goto_0

    .line 1282
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01d6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->getFilterMenuTextId()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    invoke-virtual {v3}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->getIndex()I

    move-result v3

    new-instance v4, Lcom/android/contacts/activities/TwelveKeyDialer$4;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$4;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 1293
    goto :goto_0

    .line 1295
    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b01e2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    invoke-virtual {v5}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->getDeleteMenuTextId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/activities/TwelveKeyDialer$5;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$5;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 1307
    goto/16 :goto_0

    .line 1309
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_FIREWALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1311
    goto/16 :goto_0

    .line 1314
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1317
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1319
    goto/16 :goto_0

    .line 1272
    nop

    :pswitch_data_0
    .packed-switch 0x7f070175
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 830
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnActivityRuning:Z

    .line 832
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 837
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDirectDialNumber:Ljava/lang/String;

    .line 841
    return-void

    .line 837
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 723
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 732
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 733
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 888
    const/4 v0, 0x0

    .line 889
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 893
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuFilter:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 894
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 895
    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    invoke-virtual {v2}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->getDeleteMenuTextId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 899
    :cond_1
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 900
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuPaste:Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 903
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x309000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 904
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mMenuAntiSpam:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 906
    return v1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 773
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 774
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->checkIfBackFromFromT9Dial()V

    .line 775
    iput-boolean v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnActivityRuning:Z

    .line 778
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dtmf_tone"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDTMFToneEnabled:Z

    .line 782
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "enable_telocation"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mIsTelocationEnable:Z

    .line 786
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAsyncDataLoader:Lcom/android/contacts/calllog/AsyncDataLoader;

    iget-boolean v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mIsTelocationEnable:Z

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/AsyncDataLoader;->resume(Z)V

    .line 791
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 799
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 805
    :cond_0
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 816
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 817
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 823
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->updateDialAndDeleteButtonEnabledState()V

    .line 825
    iget-boolean v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->setSoftKeyVisibility(Z)V

    .line 826
    return-void

    :cond_1
    move v1, v3

    .line 778
    goto :goto_0

    :cond_2
    move v2, v3

    .line 782
    goto :goto_1

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "TwelveKeyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    .line 805
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 820
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 300
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasFocus"

    .prologue
    .line 845
    iput-boolean p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnActivityWindowFocused:Z

    .line 846
    if-eqz p1, :cond_0

    .line 853
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 854
    .local v2, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 857
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 859
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 860
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startQuery()V

    .line 870
    invoke-direct {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->resetNewCallsFlag()V

    .line 872
    .end local v2           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void

    .line 862
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v2       #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :try_start_1
    const-string v3, "TwelveKeyDialer"

    const-string v4, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 865
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TwelveKeyDialer"

    const-string v4, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method playTone(I)V
    .locals 4
    .parameter

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1202
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1203
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1208
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1209
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 1210
    const-string v0, "TwelveKeyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    monitor-exit v1

    goto :goto_0

    .line 1216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1215
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1216
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected setFormattedDigits(Ljava/lang/String;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 701
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, dialString:Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 705
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 710
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->afterTextChanged(Landroid/text/Editable;)V

    .line 712
    .end local v1           #digits:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method public setSoftKeyVisibility(Z)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0xc8

    const/4 v6, 0x2

    const/high16 v5, 0x4120

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1363
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/DialerListAdapter;->isInChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiui/animation/ViewPropertyAnimator;->getAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 1368
    if-eqz p1, :cond_4

    .line 1369
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1371
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3c03126f

    invoke-static {v0, v6, v1, v4}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    new-instance v1, Lmiui/animation/DampingInterpolator;

    invoke-direct {v1, v5}, Lmiui/animation/DampingInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lmiui/animation/ViewPropertyAnimator$Builder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator$Builder;->start()Landroid/animation/Animator;

    .line 1383
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1409
    :cond_2
    :goto_2
    iput-boolean p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnSoftKeyVisibility:Z

    goto :goto_0

    .line 1376
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f7fffff

    invoke-static {v0, v6, v1, v4}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    new-instance v1, Lmiui/animation/DampingInterpolator;

    invoke-direct {v1, v5}, Lmiui/animation/DampingInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lmiui/animation/ViewPropertyAnimator$Builder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator$Builder;->start()Landroid/animation/Animator;

    goto :goto_1

    .line 1388
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialHideContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    .line 1390
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDialpadButtons:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3c03126f

    invoke-static {v0, v6, v4, v1}, Lmiui/animation/ViewPropertyAnimator;->of(Landroid/view/View;IFF)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lmiui/animation/ViewPropertyAnimator$Builder;->setDuration(J)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/animation/ViewPropertyAnimator$Builder;->setFinalValue(F)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    new-instance v1, Lmiui/animation/DampingInterpolator;

    invoke-direct {v1, v5}, Lmiui/animation/DampingInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lmiui/animation/ViewPropertyAnimator$Builder;->setInterpolator(Landroid/animation/TimeInterpolator;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/TwelveKeyDialer$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$6;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V

    invoke-virtual {v0, v1}, Lmiui/animation/ViewPropertyAnimator$Builder;->addListener(Landroid/animation/Animator$AnimatorListener;)Lmiui/animation/ViewPropertyAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/ViewPropertyAnimator$Builder;->start()Landroid/animation/Animator;

    .line 1404
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1405
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->requestFocus()Z

    goto :goto_2
.end method

.method public startQuery()V
    .locals 10

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnActivityRuning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->blnActivityWindowFocused:Z

    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const-string v0, "TwelveKeyDialer"

    const-string v1, "Starting query"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 372
    .local v9, key:Ljava/lang/CharSequence;
    :try_start_0
    sget-object v3, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    .line 373
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->getFilter()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, selection:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 377
    const/4 v5, 0x0

    .line 381
    :cond_2
    const/16 v0, 0x65

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->cancelAsyncTelocationQuery(I)V

    .line 383
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mQueryHandler:Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;->cancelOperation(I)V

    .line 384
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mQueryHandler:Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;

    const/16 v1, 0x35

    const/4 v2, 0x0

    sget-object v4, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/TwelveKeyDialer$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0b01e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 389
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v0, "TwelveKeyDialer"

    const-string v1, "Search suggestions query threw an exception."

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1355
    if-eqz p4, :cond_0

    .line 1356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1360
    :goto_0
    return-void

    .line 1358
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
