.class public Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProgressPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ProgressPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressItemArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/milk/storage/ProgressTaskDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I

.field final synthetic this$0:Lcom/miui/milk/ui/ProgressPageActivity;


# direct methods
.method public constructor <init>(Lcom/miui/milk/ui/ProgressPageActivity;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/storage/ProgressTaskDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    .line 284
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 285
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 286
    iput p3, p0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->mResourceId:I

    .line 287
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 291
    move-object/from16 v10, p2

    .line 292
    .local v10, view:Landroid/view/View;
    if-nez v10, :cond_0

    .line 293
    iget-object v11, p0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v12, p0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->mResourceId:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/storage/ProgressTaskDetail;

    .line 298
    .local v8, taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 299
    .local v9, titleView:Landroid/widget/TextView;
    const v11, 0x7f0a0016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 300
    .local v6, progressBar:Landroid/widget/ProgressBar;
    const v11, 0x7f0a0017

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 301
    .local v4, infoView:Landroid/widget/TextView;
    const v11, 0x7f0a0018

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 303
    .local v1, imageView:Landroid/widget/ImageView;
    iget-object v11, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->title:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget v11, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->status:I

    packed-switch v11, :pswitch_data_0

    .line 360
    :goto_0
    return-object v10

    .line 306
    :pswitch_0
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 307
    const v11, 0x7f070045

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 308
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 312
    :pswitch_1
    const/4 v5, 0x0

    .line 313
    .local v5, progressAmount:I
    iget v11, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->max:I

    if-lez v11, :cond_1

    iget v11, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->current:I

    if-lez v11, :cond_1

    .line 314
    iget v11, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->current:I

    mul-int/lit8 v11, v11, 0x64

    iget v12, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->max:I

    div-int v5, v11, v12

    .line 317
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v7, sb:Ljava/lang/StringBuilder;
    iget-object v11, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->description:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 319
    iget-object v11, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->description:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const/16 v11, 0x20

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    :cond_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const-string v11, "% "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 327
    invoke-virtual {v6, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 328
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 332
    .end local v5           #progressAmount:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :pswitch_2
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 334
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    .local v2, info:Ljava/lang/StringBuffer;
    iget-object v11, p0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    const v12, 0x7f070048

    invoke-virtual {v11, v12}, Lcom/miui/milk/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const v11, 0x7f02000f

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 344
    .end local v2           #info:Ljava/lang/StringBuffer;
    :pswitch_3
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 345
    const v11, 0x7f070049

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 346
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 350
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    .local v3, infoBuf:Ljava/lang/StringBuffer;
    iget-object v11, p0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    const v12, 0x7f07004a

    invoke-virtual {v11, v12}, Lcom/miui/milk/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    const-string v11, " : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    iget-object v11, p0, Lcom/miui/milk/ui/ProgressPageActivity$ProgressItemArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-virtual {v11}, Lcom/miui/milk/ui/ProgressPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v8, Lcom/miui/milk/storage/ProgressTaskDetail;->statusCode:I

    invoke-static {v11, v12}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
