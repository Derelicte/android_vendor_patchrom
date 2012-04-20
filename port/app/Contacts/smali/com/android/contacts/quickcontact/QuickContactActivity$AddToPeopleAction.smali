.class Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;
.super Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToPeopleAction"
.end annotation


# instance fields
.field private innerContext:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "data"
    .parameter "isPhone"

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    .line 986
    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;->innerContext:Landroid/content/Context;

    .line 987
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;->intent:Landroid/content/Intent;

    .line 988
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;->intent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    if-eqz p4, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;->intent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;->intent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;->innerContext:Landroid/content/Context;

    const v1, 0x7f0b017c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$AddToPeopleAction;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1008
    const-string v0, "vnd.android.cursor.item/contact"

    return-object v0
.end method
