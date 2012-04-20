.class Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;
.super Ljava/lang/Object;
.source "RemoveDuplicateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/RemoveDuplicateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mChecked:Landroid/widget/CheckBox;

.field public mGroups:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;Lcom/android/contacts/preference/RemoveDuplicateActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/contacts/preference/RemoveDuplicateActivity$ViewHolder;-><init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V

    return-void
.end method
