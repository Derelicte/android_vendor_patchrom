.class Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "WhiteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/WhiteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

.field final synthetic this$0:Lcom/miui/antispam/firewall/WhiteListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/WhiteListAdapter;Lcom/miui/antispam/firewall/WhiteListAdapter;)V
    .locals 1
    .parameter
    .parameter "adapter"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;->this$0:Lcom/miui/antispam/firewall/WhiteListAdapter;

    .line 225
    #getter for: Lcom/miui/antispam/firewall/WhiteListAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->access$100(Lcom/miui/antispam/firewall/WhiteListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 226
    iput-object p2, p0, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;->mAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    .line 227
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 231
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 232
    if-eqz p3, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter$QueryHandler;->mAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/antispam/firewall/WhiteListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 236
    :cond_0
    return-void
.end method
