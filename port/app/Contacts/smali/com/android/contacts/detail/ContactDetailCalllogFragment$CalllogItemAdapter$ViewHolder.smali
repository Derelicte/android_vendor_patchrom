.class Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactDetailCalllogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mCallDate:Landroid/widget/TextView;

.field public mCallNumber:Landroid/widget/TextView;

.field public mCallType:Landroid/widget/ImageView;

.field public mDuration:Landroid/widget/TextView;

.field public mLocation:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;->this$1:Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;Lcom/android/contacts/detail/ContactDetailCalllogFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter$ViewHolder;-><init>(Lcom/android/contacts/detail/ContactDetailCalllogFragment$CalllogItemAdapter;)V

    return-void
.end method
