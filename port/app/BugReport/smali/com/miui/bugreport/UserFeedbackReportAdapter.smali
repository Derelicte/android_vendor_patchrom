.class public Lcom/miui/bugreport/UserFeedbackReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserFeedbackReportAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/bugreport/UserFeedbackReport;)V
    .locals 0
    .parameter "context"
    .parameter "feedbackReport"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0, p2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->buildRows(Lcom/miui/bugreport/UserFeedbackReport;)V

    .line 37
    return-void
.end method

.method private addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V
    .locals 1
    .parameter "feedbackReport"
    .parameter "fieldName"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;II)V

    .line 42
    return-void
.end method

.method private addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;II)V
    .locals 3
    .parameter "feedbackReport"
    .parameter "fieldName"
    .parameter "resId"
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 47
    .local v0, localField:Ljava/lang/reflect/Field;
    iget-object v1, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    new-instance v2, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;

    invoke-direct {v2, p1, v0, p3, p4}, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;-><init>(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/reflect/Field;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method private addSectionHeader(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    new-instance v1, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;

    invoke-direct {v1, p1}, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method private buildRows(Lcom/miui/bugreport/UserFeedbackReport;)V
    .locals 4
    .parameter "feedbackReport"

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    .line 58
    const v1, 0x7f040024

    :try_start_0
    invoke-direct {p0, v1}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 59
    iget-object v1, p1, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const-string v1, "description"

    const v2, 0x7f040021

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 62
    :cond_0
    const-string v1, "timestamp"

    const v2, 0x7f04001e

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;II)V

    .line 63
    const v1, 0x7f040025

    invoke-direct {p0, v1}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 64
    const-string v1, "networkName"

    const v2, 0x7f040019

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 65
    const v1, 0x7f040026

    invoke-direct {p0, v1}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 66
    const-string v1, "device"

    const v2, 0x7f040016

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 67
    const-string v1, "buildId"

    const v2, 0x7f040013

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 68
    const-string v1, "buildType"

    const v2, 0x7f040014

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 69
    const-string v1, "model"

    const v2, 0x7f040018

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 70
    const-string v1, "product"

    const v2, 0x7f04001c

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 71
    const-string v1, "release"

    const v2, 0x7f04001d

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 72
    const-string v1, "incremental"

    const v2, 0x7f040017

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 73
    const-string v1, "codename"

    const v2, 0x7f040015

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 74
    const-string v1, "board"

    const v2, 0x7f040011

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 75
    const-string v1, "brand"

    const v2, 0x7f040012

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 76
    iget-object v1, p1, Lcom/miui/bugreport/UserFeedbackReport;->runningApplications:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/miui/bugreport/UserFeedbackReport;->runningApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    const-string v1, "runningApplications"

    const v2, 0x7f040020

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 80
    :cond_1
    iget-object v1, p1, Lcom/miui/bugreport/UserFeedbackReport;->systemLog:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "systemLog"

    const v2, 0x7f040022

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 83
    :cond_2
    iget-object v1, p1, Lcom/miui/bugreport/UserFeedbackReport;->screenshot:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 84
    const v1, 0x7f040027

    invoke-direct {p0, v1}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 85
    const-string v1, "screenshot"

    const v2, 0x7f040023

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/bugreport/UserFeedbackReportAdapter;->addRow(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_3
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 105
    iget-object v10, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;

    .line 106
    .local v4, row:Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;
    iget-object v10, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 109
    .local v3, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 110
    const v10, 0x7f030002

    const/4 v11, 0x0

    invoke-virtual {v3, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    const v10, 0x7f060007

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, header:Landroid/widget/TextView;
    const v10, 0x7f060008

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 117
    .local v5, textContent:Landroid/widget/LinearLayout;
    const v10, 0x7f060009

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 118
    .local v7, textTitle:Landroid/widget/TextView;
    const v10, 0x7f06000a

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 119
    .local v6, textSubtitle:Landroid/widget/TextView;
    const v10, 0x7f06000b

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 120
    .local v2, imageContent:Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->isHeader()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 121
    iget v10, v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->labelResId:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_0
    return-object p2

    .line 126
    :cond_1
    invoke-virtual {v4}, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->isImageView()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 127
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v10, v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget v10, v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->labelResId:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 135
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :try_start_0
    iget v10, v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->convertType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 140
    iget-object v10, v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v11, v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->report:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 141
    .local v8, time:J
    iget-object v10, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v8, v9}, Lcom/miui/bugreport/Utils;->formatDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 145
    .end local v8           #time:J
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_1
    iget-object v10, v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v11, v4, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->report:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;

    invoke-virtual {v0}, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->isHeader()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;

    .line 162
    .local v2, row:Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->labelResId:I

    const v4, 0x7f040022

    if-ne v3, v4, :cond_0

    .line 164
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v5, v2, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->report:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v3, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 178
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 175
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
