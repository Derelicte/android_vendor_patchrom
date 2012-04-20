.class public Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;
.super Ljava/lang/Object;
.source "BlackListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/BlackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# instance fields
.field public final blacklistLog:Landroid/widget/TextView;

.field public final blacklistName:Landroid/widget/TextView;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const v0, 0x7f080009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->blacklistName:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f08000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackListAdapter$ItemView;->blacklistLog:Landroid/widget/TextView;

    .line 230
    return-void
.end method
