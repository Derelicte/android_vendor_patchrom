.class public Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProgressResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ProgressResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultArrayAdapter"
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

.field final synthetic this$0:Lcom/miui/milk/ui/ProgressResultActivity;


# direct methods
.method public constructor <init>(Lcom/miui/milk/ui/ProgressResultActivity;Landroid/content/Context;IILjava/util/List;)V
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
    .line 113
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    .line 114
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 115
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    iput p3, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->mResourceId:I

    .line 117
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 121
    move-object v5, p2

    .line 122
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    .line 123
    iget-object v6, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->mResourceId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 125
    :cond_0
    const v6, 0x7f0a0025

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 126
    .local v4, title:Landroid/widget/TextView;
    const v6, 0x7f0a0026

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 128
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/storage/ProgressTaskDetail;

    .line 130
    .local v3, taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    iget-object v6, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget v6, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->status:I

    packed-switch v6, :pswitch_data_0

    .line 164
    :pswitch_0
    const v6, 0x7f070049

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 166
    :goto_0
    return-object v5

    .line 133
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .local v0, info:Ljava/lang/StringBuffer;
    iget v6, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    const v8, 0x7f07002b

    invoke-virtual {v7, v8}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    const v8, 0x7f07002c

    invoke-virtual {v7, v8}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->updateCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    const v8, 0x7f07002d

    invoke-virtual {v7, v8}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->deleteCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :cond_2
    iget v6, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    const v8, 0x7f070060

    invoke-virtual {v7, v8}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 147
    .end local v0           #info:Ljava/lang/StringBuffer;
    :pswitch_2
    iget-object v6, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-virtual {v6}, Lcom/miui/milk/ui/ProgressResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->statusCode:I

    invoke-static {v6, v7}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, networkErrorString:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .restart local v0       #info:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget v6, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    const v8, 0x7f07002b

    invoke-virtual {v7, v8}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    const v8, 0x7f07002d

    invoke-virtual {v7, v8}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->deleteCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_3
    :goto_2
    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v6, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-virtual {v6}, Lcom/miui/milk/ui/ProgressResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 154
    :cond_4
    iget v6, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/ui/ProgressResultActivity$ResultArrayAdapter;->this$0:Lcom/miui/milk/ui/ProgressResultActivity;

    const v8, 0x7f070060

    invoke-virtual {v7, v8}, Lcom/miui/milk/ui/ProgressResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 131
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
