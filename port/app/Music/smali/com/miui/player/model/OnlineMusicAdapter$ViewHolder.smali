.class Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OnlineMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/OnlineMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public final artistNameText:Landroid/widget/TextView;

.field public final downloadText:Landroid/widget/TextView;

.field public final favoriteIndicator:Landroid/widget/ImageView;

.field public final playIndicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/player/model/OnlineMusicAdapter;

.field public final trackNameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/OnlineMusicAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->this$0:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const v0, 0x7f0c000c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f0c00a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0c0035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->trackNameText:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0c0036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->artistNameText:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0c0026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->downloadText:Landroid/widget/TextView;

    .line 169
    return-void
.end method
