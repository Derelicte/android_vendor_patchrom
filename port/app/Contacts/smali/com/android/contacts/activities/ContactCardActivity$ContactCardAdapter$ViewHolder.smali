.class public Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mCheckbox:Landroid/widget/CheckBox;

.field public mData:Landroid/widget/TextView;

.field public mType:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter$ViewHolder;->this$1:Lcom/android/contacts/activities/ContactCardActivity$ContactCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
