.class Lcom/android/contacts/activities/NickNameEditActivity$2;
.super Ljava/lang/Object;
.source "NickNameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/NickNameEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/NickNameEditActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/NickNameEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/contacts/activities/NickNameEditActivity$2;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/activities/NickNameEditActivity$2;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/NickNameEditActivity;->finish()V

    .line 67
    return-void
.end method
