.class Lcom/android/contacts/quickcontact/QuickContactActivity$EmailAction;
.super Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailAction"
.end annotation


# instance fields
.field private innerContext:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "mailIntent"

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EmailAction;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    .line 1017
    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EmailAction;->innerContext:Landroid/content/Context;

    .line 1018
    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EmailAction;->intent:Landroid/content/Intent;

    .line 1019
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EmailAction;->innerContext:Landroid/content/Context;

    const v1, 0x7f0b011d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$EmailAction;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1033
    const-string v0, "vnd.android.cursor.item/email_v2"

    return-object v0
.end method
