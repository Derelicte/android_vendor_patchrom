.class Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;
.super Ljava/lang/Object;
.source "PickerGroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/picker/PickerGroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupViewHolder"
.end annotation


# instance fields
.field public accountHeader:Landroid/view/View;

.field public accountName:Landroid/widget/TextView;

.field public accountType:Landroid/widget/TextView;

.field public divider:Landroid/view/View;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mCount:Landroid/widget/TextView;

.field public mName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/picker/PickerGroupsFragment$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/contacts/picker/PickerGroupsFragment$GroupViewHolder;-><init>()V

    return-void
.end method
