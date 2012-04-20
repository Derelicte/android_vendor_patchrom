.class Lcom/miui/antispam/firewall/KeywordListActivity$2;
.super Ljava/lang/Object;
.source "KeywordListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;->buildNewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/KeywordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mNewView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$200(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$300(Lcom/miui/antispam/firewall/KeywordListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->addMultiple(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$400(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    iget-object v2, p0, Lcom/miui/antispam/firewall/KeywordListActivity$2;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mSelectedId:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$300(Lcom/miui/antispam/firewall/KeywordListActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->update(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$500(Lcom/miui/antispam/firewall/KeywordListActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
