.class Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BlackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/BlackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

.field final synthetic this$0:Lcom/miui/antispam/firewall/BlackListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/BlackListAdapter;Lcom/miui/antispam/firewall/BlackListAdapter;)V
    .locals 1
    .parameter
    .parameter "adapter"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;->this$0:Lcom/miui/antispam/firewall/BlackListAdapter;

    .line 237
    #getter for: Lcom/miui/antispam/firewall/BlackListAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->access$000(Lcom/miui/antispam/firewall/BlackListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 238
    iput-object p2, p0, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;->mAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    .line 239
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 243
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 244
    if-eqz p3, :cond_0

    .line 245
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter$QueryHandler;->mAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/antispam/firewall/BlackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 248
    :cond_0
    return-void
.end method
