.class Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;
.super Ljava/lang/Object;
.source "FlipAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->transformPhotoView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/photoeditor/actions/FlipAction$1;

.field final synthetic val$horizontalDegrees:F

.field final synthetic val$verticalDegrees:F


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/FlipAction$1;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;->this$1:Lcom/miui/gallery/photoeditor/actions/FlipAction$1;

    iput p2, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;->val$horizontalDegrees:F

    iput p3, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;->val$verticalDegrees:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;->this$1:Lcom/miui/gallery/photoeditor/actions/FlipAction$1;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1;->photoView:Lcom/miui/gallery/photoeditor/PhotoView;

    iget v1, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;->val$horizontalDegrees:F

    iget v2, p0, Lcom/miui/gallery/photoeditor/actions/FlipAction$1$1;->val$verticalDegrees:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/PhotoView;->flipPhoto(FF)V

    .line 90
    return-void
.end method
