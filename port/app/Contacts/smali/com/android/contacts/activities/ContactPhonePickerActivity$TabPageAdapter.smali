.class Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ContactPhonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactPhonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPageAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field final synthetic this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;Lcom/android/contacts/activities/ContactPhonePickerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;-><init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;)V

    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 346
    sget-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->FAVORITES:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFavoritesFragment:Lcom/android/contacts/picker/PickerFavoritesFragment;

    .line 353
    :goto_0
    return-object v0

    .line 348
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ALL:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mAllFragment:Lcom/android/contacts/picker/PickerAllFragment;

    goto :goto_0

    .line 350
    :cond_1
    sget-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->GROUPS:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mGroupsFragment:Lcom/android/contacts/picker/PickerGroupsFragment;

    goto :goto_0

    .line 352
    :cond_2
    sget-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->RECENT:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRecentFragment:Lcom/android/contacts/picker/PickerRecentFragment;

    goto :goto_0

    .line 355
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    #getter for: Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->access$500(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 329
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 336
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    #getter for: Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->access$500(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 338
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->values()[Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    #getter for: Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->access$500(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 363
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 364
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPageAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 365
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 370
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 376
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 386
    return-void
.end method
