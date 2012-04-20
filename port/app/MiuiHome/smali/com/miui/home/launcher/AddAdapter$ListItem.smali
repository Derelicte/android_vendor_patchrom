.class public Lcom/miui/home/launcher/AddAdapter$ListItem;
.super Ljava/lang/Object;
.source "AddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/AddAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field public final actionTag:I

.field public final image:Landroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/miui/home/launcher/AddAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/AddAdapter;Landroid/content/res/Resources;III)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/AddAdapter$ListItem;->this$0:Lcom/miui/home/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 53
    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 54
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 58
    :goto_0
    iput p5, p0, Lcom/miui/home/launcher/AddAdapter$ListItem;->actionTag:I

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
