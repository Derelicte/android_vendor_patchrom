.class Lcom/miui/antispam/firewall/BlackWhiteList$1;
.super Landroid/os/AsyncTask;
.source "BlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/BlackWhiteList;->importBatch([Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

.field final synthetic val$pDialog:Landroid/app/ProgressDialog;

.field final synthetic val$phoneNumbers:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/BlackWhiteList;Landroid/app/ProgressDialog;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    iput-object p2, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$pDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$phoneNumbers:[Ljava/lang/String;

    iput p4, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$requestCode:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 375
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 384
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$phoneNumbers:[Ljava/lang/String;

    array-length v0, v3

    .line 385
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 386
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$phoneNumbers:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 387
    .local v2, phoneNumber:Ljava/lang/String;
    iget v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$requestCode:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    .line 388
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #calls: Lcom/miui/antispam/firewall/BlackWhiteList;->addBlacklist(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$000(Lcom/miui/antispam/firewall/BlackWhiteList;Ljava/lang/String;)V

    .line 385
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #calls: Lcom/miui/antispam/firewall/BlackWhiteList;->addWhitelist(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$100(Lcom/miui/antispam/firewall/BlackWhiteList;Ljava/lang/String;)V

    goto :goto_1

    .line 394
    .end local v2           #phoneNumber:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 375
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->this$0:Lcom/miui/antispam/firewall/BlackWhiteList;

    #getter for: Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;
    invoke-static {v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->access$200(Lcom/miui/antispam/firewall/BlackWhiteList;)Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 404
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 379
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 380
    return-void
.end method
