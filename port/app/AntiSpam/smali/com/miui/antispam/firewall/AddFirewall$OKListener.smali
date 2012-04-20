.class Lcom/miui/antispam/firewall/AddFirewall$OKListener;
.super Ljava/lang/Object;
.source "AddFirewall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/AddFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/AddFirewall;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall$OKListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const v10, 0x7f060069

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mMode:I
    invoke-static {v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$300(Lcom/miui/antispam/firewall/AddFirewall;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mMode:I
    invoke-static {v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$300(Lcom/miui/antispam/firewall/AddFirewall;)I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    const-class v2, Lcom/miui/antispam/firewall/FirewallTab;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 238
    const-string v1, "tab_target"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/firewall/AddFirewall;->startActivity(Landroid/content/Intent;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/AddFirewall;->finish()V

    .line 243
    return-void

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$400(Lcom/miui/antispam/firewall/AddFirewall;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    move v0, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 175
    iget-object v7, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->isInBlacklist(Ljava/lang/String;)Z
    invoke-static {v7, v6}, Lcom/miui/antispam/firewall/AddFirewall;->access$500(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 176
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v7, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/miui/antispam/firewall/AddFirewall;->access$600(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/miui/antispam/firewall/BlackListAdapter;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 174
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    :cond_2
    iget-object v7, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v8, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-virtual {v8, v10, v9}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 185
    :cond_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v1, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/AddFirewall;->access$400(Lcom/miui/antispam/firewall/AddFirewall;)[Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->importMessage([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/antispam/firewall/AddFirewall;->access$800(Lcom/miui/antispam/firewall/AddFirewall;[Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$900(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->isInBlacklist(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$500(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 194
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/miui/antispam/firewall/AddFirewall;->access$900(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/miui/antispam/firewall/AddFirewall;->access$600(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/miui/antispam/firewall/BlackListAdapter;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/miui/antispam/firewall/AddFirewall;->access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v3

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->importMessage([Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/miui/antispam/firewall/AddFirewall;->access$800(Lcom/miui/antispam/firewall/AddFirewall;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_4
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v4, v10, v1}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$900(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #calls: Lcom/miui/antispam/firewall/AddFirewall;->isInWhitelist(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/miui/antispam/firewall/AddFirewall;->access$1000(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 212
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v1, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/antispam/firewall/AddFirewall;->access$900(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/antispam/firewall/AddFirewall;->access$600(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/firewall/WhiteListAdapter;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_5
    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v4, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    const v5, 0x7f06006a

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v4, v5, v1}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 222
    :pswitch_3
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v1, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/AddFirewall;->access$1100(Lcom/miui/antispam/firewall/AddFirewall;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/antispam/firewall/AddFirewall;->access$600(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/firewall/BlackListAdapter;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :pswitch_4
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    iget-object v1, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/antispam/firewall/AddFirewall;->access$1100(Lcom/miui/antispam/firewall/AddFirewall;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/firewall/AddFirewall$OKListener;->this$0:Lcom/miui/antispam/firewall/AddFirewall;

    #getter for: Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/antispam/firewall/AddFirewall;->access$600(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/antispam/firewall/WhiteListAdapter;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
