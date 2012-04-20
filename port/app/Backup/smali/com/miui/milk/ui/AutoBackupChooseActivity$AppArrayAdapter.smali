.class public Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoBackupChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/AutoBackupChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/milk/common/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I

.field final synthetic this$0:Lcom/miui/milk/ui/AutoBackupChooseActivity;


# direct methods
.method public constructor <init>(Lcom/miui/milk/ui/AutoBackupChooseActivity;Landroid/content/Context;IILjava/util/List;)V
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
            "Lcom/miui/milk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/common/AppInfo;>;"
    iput-object p1, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->this$0:Lcom/miui/milk/ui/AutoBackupChooseActivity;

    .line 88
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 89
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    iput p3, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->mResourceId:I

    .line 91
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 95
    iget-object v4, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->mResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/AutoBackupChooseActivity$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/common/AppInfo;

    .line 98
    .local v1, appInfo:Lcom/miui/milk/common/AppInfo;
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    .local v2, appTitle:Landroid/widget/TextView;
    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 101
    .local v0, appCheck:Landroid/widget/CheckBox;
    iget-object v4, v1, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-boolean v4, v1, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    return-object v3
.end method
