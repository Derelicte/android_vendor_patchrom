.class Lcom/android/contacts/activities/ContactCardActivity$1;
.super Landroid/os/AsyncTask;
.source "ContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactCardActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/contacts/activities/ContactCardActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactCardActivity;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #getter for: Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactCardActivity;->access$000(Lcom/android/contacts/activities/ContactCardActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    const v3, 0x7f0b020f

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    .line 168
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactCardActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    .line 174
    new-instance v2, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->val$data:Landroid/content/Intent;

    const-string v7, "account_name"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->val$data:Landroid/content/Intent;

    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->val$data:Landroid/content/Intent;

    const-string v9, "data_set"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v2, mAccount:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #calls: Lcom/android/contacts/activities/ContactCardActivity;->insertContact(Lcom/android/contacts/model/AccountWithDataSet;)Landroid/net/Uri;
    invoke-static {v6, v2}, Lcom/android/contacts/activities/ContactCardActivity;->access$100(Lcom/android/contacts/activities/ContactCardActivity;Lcom/android/contacts/model/AccountWithDataSet;)Landroid/net/Uri;

    move-result-object v5

    .line 180
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 181
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 182
    .local v3, rawContactId:J
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    invoke-virtual {v6}, Lcom/android/contacts/activities/ContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 186
    .local v0, contactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "ignoreDefaultUpBehavior"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    iget-object v6, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    iget-object v7, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #getter for: Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/activities/ContactCardActivity;->access$000(Lcom/android/contacts/activities/ContactCardActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/contacts/ContactsUtils;->processPackageScope(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/activities/ContactCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #rawContactId:J
    :cond_0
    const/4 v6, 0x0

    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactCardActivity$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #getter for: Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactCardActivity;->access$000(Lcom/android/contacts/activities/ContactCardActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0211

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$1;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactCardActivity;->finish()V

    .line 205
    return-void
.end method
