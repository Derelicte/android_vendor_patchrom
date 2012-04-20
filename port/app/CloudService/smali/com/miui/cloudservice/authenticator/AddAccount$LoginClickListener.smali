.class Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;
.super Ljava/lang/Object;
.source "AddAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cloudservice/authenticator/AddAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/AddAccount;


# direct methods
.method private constructor <init>(Lcom/miui/cloudservice/authenticator/AddAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/cloudservice/authenticator/AddAccount;Lcom/miui/cloudservice/authenticator/AddAccount$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccount;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "pView"

    .prologue
    .line 138
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mUsernameEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$400(Lcom/miui/cloudservice/authenticator/AddAccount;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mUsername:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$302(Lcom/miui/cloudservice/authenticator/AddAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$600(Lcom/miui/cloudservice/authenticator/AddAccount;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mPassword:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$502(Lcom/miui/cloudservice/authenticator/AddAccount;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    const-string v3, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 143
    .local v1, namePat:Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mUsername:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$300(Lcom/miui/cloudservice/authenticator/AddAccount;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mUsername:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$300(Lcom/miui/cloudservice/authenticator/AddAccount;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mUsernameEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$400(Lcom/miui/cloudservice/authenticator/AddAccount;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    invoke-virtual {v4}, Lcom/miui/cloudservice/authenticator/AddAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 199
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/miui/cloudservice/authenticator/AccountHelper;

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    invoke-virtual {v3}, Lcom/miui/cloudservice/authenticator/AddAccount;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, helper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v2

    .line 150
    .local v2, params:Lcom/miui/cloudservice/authenticator/Parameter;
    const-string v3, "username"

    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mUsername:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$300(Lcom/miui/cloudservice/authenticator/AddAccount;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 151
    const-string v3, "password"

    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    #getter for: Lcom/miui/cloudservice/authenticator/AddAccount;->mPassword:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$500(Lcom/miui/cloudservice/authenticator/AddAccount;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 152
    const-string v3, "type"

    const-string v4, "miuiToken"

    invoke-virtual {v2, v3, v4}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 154
    new-instance v3, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;-><init>(Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener;Lcom/miui/cloudservice/authenticator/AccountHelper;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/miui/cloudservice/authenticator/Parameter;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/miui/cloudservice/authenticator/AddAccount$LoginClickListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
