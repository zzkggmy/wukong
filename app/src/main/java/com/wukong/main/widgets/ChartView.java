package com.wukong.main.widgets;

import android.content.Context;
import java.util.Date;
import java.util.Random;

public class ChartView
{
    Context context;
    private XYMultipleSeriesDataset dataset;
    private TimeSeries series;
    private String title;
    private String titleX;
    private String titleY;

    public ChartView(Context paramContext, String paramString1, String paramString2, String paramString3)
    {
        this.context = paramContext;
        this.title = paramString1;
        this.titleX = paramString2;
        this.titleY = paramString3;
    }

    private XYMultipleSeriesDataset getDateDemoDataset()
    {
        this.dataset = new XYMultipleSeriesDataset();
        long l = new Date().getTime();
        Random localRandom = new Random();
        this.series = new TimeSeries("Demo series 1");
        for (int i = 0; i < 10; i++)
            this.series.add(new Date(l + i * 1000), 20 + localRandom.nextInt() % 10);
        this.dataset.addSeries(this.series);
        return this.dataset;
    }

    private XYMultipleSeriesRenderer getDemoRenderer()
    {
        XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
        localXYMultipleSeriesRenderer.setChartTitle(this.title);
        localXYMultipleSeriesRenderer.setChartTitleTextSize(20.0F);
        localXYMultipleSeriesRenderer.setXTitle(this.titleX);
        localXYMultipleSeriesRenderer.setYTitle(this.titleY);
        localXYMultipleSeriesRenderer.setAxisTitleTextSize(16.0F);
        localXYMultipleSeriesRenderer.setAxesColor(-16777216);
        localXYMultipleSeriesRenderer.setLabelsTextSize(15.0F);
        localXYMultipleSeriesRenderer.setLabelsColor(-16777216);
        localXYMultipleSeriesRenderer.setLegendTextSize(15.0F);
        localXYMultipleSeriesRenderer.setXLabelsColor(-16777216);
        localXYMultipleSeriesRenderer.setYLabelsColor(0, -16777216);
        localXYMultipleSeriesRenderer.setShowLegend(false);
        localXYMultipleSeriesRenderer.setMargins(new int[] { 5, 30, 15, 2 });
        XYSeriesRenderer localXYSeriesRenderer = new XYSeriesRenderer();
        localXYSeriesRenderer.setColor(-65536);
        localXYSeriesRenderer.setChartValuesTextSize(15.0F);
        localXYSeriesRenderer.setChartValuesSpacing(3.0F);
        localXYSeriesRenderer.setPointStyle(PointStyle.POINT);
        localXYSeriesRenderer.setFillBelowLine(true);
        localXYSeriesRenderer.setFillBelowLineColor(-1);
        localXYSeriesRenderer.setFillPoints(true);
        localXYMultipleSeriesRenderer.addSeriesRenderer(localXYSeriesRenderer);
        localXYMultipleSeriesRenderer.setMarginsColor(-1);
        localXYMultipleSeriesRenderer.setPanEnabled(false, false);
        localXYMultipleSeriesRenderer.setShowGrid(true);
        localXYMultipleSeriesRenderer.setYAxisMax(50.0D);
        localXYMultipleSeriesRenderer.setYAxisMin(-30.0D);
        localXYMultipleSeriesRenderer.setInScroll(true);
        return localXYMultipleSeriesRenderer;
    }

    public XYMultipleSeriesDataset getDataset()
    {
        return this.dataset;
    }

    public TimeSeries getSeries()
    {
        return this.series;
    }

    public GraphicalView getchartView()
    {
        return ChartFactory.getTimeChartView(this.context, getDateDemoDataset(), getDemoRenderer(), "mm:ss");
    }
}