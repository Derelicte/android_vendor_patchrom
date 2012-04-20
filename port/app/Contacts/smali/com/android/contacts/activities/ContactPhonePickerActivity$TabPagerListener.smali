.class Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "ContactPhonePickerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactPhonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;Lcom/android/contacts/activities/ContactPhonePickerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 299
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 303
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    #getter for: Lcom/android/contacts/activities/ContactPhonePickerActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->access$400(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 309
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mFavoritesFragment:Lcom/android/contacts/picker/PickerFavoritesFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/picker/PickerFavoritesFragment;->onPageSelected(I)V

    .line 310
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mAllFragment:Lcom/android/contacts/picker/PickerAllFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/picker/PickerAllFragment;->onPageSelected(I)V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mGroupsFragment:Lcom/android/contacts/picker/PickerGroupsFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/picker/PickerGroupsFragment;->onPageSelected(I)V

    .line 312
    iget-object v0, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactPhonePickerActivity;->mRecentFragment:Lcom/android/contacts/picker/PickerRecentFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/picker/PickerRecentFragment;->onPageSelected(I)V

    .line 313
    return-void
.end method
