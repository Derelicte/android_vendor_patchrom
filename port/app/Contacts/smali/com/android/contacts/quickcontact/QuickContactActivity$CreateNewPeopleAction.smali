.class Lcom/android/contacts/quickcontact/QuickContactActivity$CreateNewPeopleAction;
.super Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateNewPeopleAction"
.end annotation


# instance fields
.field private innerContext:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "data"
    .parameter "isPhone"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CreateNewPeopleAction;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    .line 954
    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CreateNewPeopleAction;->innerContext:Landroid/content/Context;

    .line 955
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CreateNewPeopleAction;->intent:Landroid/content/Intent;

    .line 956
    if-eqz p4, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CreateNewPeopleAction;->intent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CreateNewPeopleAction;->intent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CreateNewPeopleAction;->innerContext:Landroid/content/Context;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$CreateNewPeopleAction;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 976
    const-string v0, "vnd.android.cursor.item/contact"

    return-object v0
.end method
