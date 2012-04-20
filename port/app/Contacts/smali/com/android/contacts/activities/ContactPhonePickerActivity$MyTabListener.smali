.class Lcom/android/contacts/activities/ContactPhonePickerActivity$MyTabListener;
.super Ljava/lang/Object;
.source "ContactPhonePickerActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactPhonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$MyTabListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;Lcom/android/contacts/activities/ContactPhonePickerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactPhonePickerActivity$MyTabListener;-><init>(Lcom/android/contacts/activities/ContactPhonePickerActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 262
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$MyTabListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    #getter for: Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->access$300(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ordinal()I

    move-result v0

    .line 268
    .local v0, index:I
    iget-object v1, p0, Lcom/android/contacts/activities/ContactPhonePickerActivity$MyTabListener;->this$0:Lcom/android/contacts/activities/ContactPhonePickerActivity;

    #getter for: Lcom/android/contacts/activities/ContactPhonePickerActivity;->mTabPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactPhonePickerActivity;->access$300(Lcom/android/contacts/activities/ContactPhonePickerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 270
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 263
    return-void
.end method
