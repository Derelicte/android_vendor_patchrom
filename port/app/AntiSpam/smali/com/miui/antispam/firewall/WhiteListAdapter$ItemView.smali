.class public final Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;
.super Ljava/lang/Object;
.source "WhiteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/WhiteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemView"
.end annotation


# instance fields
.field public number:Ljava/lang/String;

.field public final whitelistName:Landroid/widget/TextView;

.field public final whitelistNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const v0, 0x7f080009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistName:Landroid/widget/TextView;

    .line 207
    const/high16 v0, 0x7f08

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistNumber:Landroid/widget/TextView;

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method


# virtual methods
.method public setGone()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 211
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/miui/antispam/firewall/WhiteListAdapter$ItemView;->whitelistNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    return-void
.end method
