.class public Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FindlostContactSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactInfoArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/milk/common/ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I

.field final synthetic this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;


# direct methods
.method public constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;Landroid/content/Context;IILjava/util/List;)V
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
            "Lcom/miui/milk/common/ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/common/ContactInfo;>;"
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    .line 298
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 299
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 300
    iput p3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->mResourceId:I

    .line 301
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 306
    iget-object v5, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->mResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 307
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/FindlostContactSelectActivity$ContactInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/common/ContactInfo;

    .line 309
    .local v1, contactInfo:Lcom/miui/milk/common/ContactInfo;
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 310
    .local v3, contactTitle:Landroid/widget/TextView;
    const v5, 0x1020010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 311
    .local v2, contactSummary:Landroid/widget/TextView;
    const v5, 0x1020001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 313
    .local v0, contactCheck:Landroid/widget/CheckBox;
    iget-object v5, v1, Lcom/miui/milk/common/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v5, v1, Lcom/miui/milk/common/ContactInfo;->summary:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-boolean v5, v1, Lcom/miui/milk/common/ContactInfo;->checked:Z

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 317
    return-object v4
.end method
