/**
 * Minified by jsDelivr using Terser v5.3.5.
 * Original file: /npm/jquery-flot@0.8.3/jquery.flot.pie.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
! function(e) {
    var i = {
        series: {
            pie: {
                show: !1,
                radius: "auto",
                innerRadius: 0,
                startAngle: 1.5,
                tilt: 1,
                shadow: {
                    left: 5,
                    top: 15,
                    alpha: .02
                },
                offset: {
                    top: 0,
                    left: "auto"
                },
                stroke: {
                    color: "#fff",
                    width: 1
                },
                label: {
                    show: "auto",
                    formatter: function(e, i) {
                        return "<div style='font-size:x-small;text-align:center;padding:2px;color:" + i.color + ";'>" + e + "<br/>" + Math.round(i.percent) + "%</div>"
                    },
                    radius: 1,
                    background: {
                        color: null,
                        opacity: 0
                    },
                    threshold: 0
                },
                combine: {
                    threshold: -1,
                    color: null,
                    label: "Other"
                },
                highlight: {
                    opacity: .5
                }
            }
        }
    };
    e.plot.plugins.push({
        init: function(i) {
            var s = null,
                t = null,
                r = null,
                a = null,
                l = null,
                n = null,
                o = !1,
                p = null,
                h = [];

            function g(i, a, l) {
                o || (o = !0, s = i.getCanvas(), t = e(s).parent(), r = i.getOptions(), i.setData(function(i) {
                    for (var s = 0, t = 0, a = 0, l = r.series.pie.combine.color, n = [], o = 0; o < i.length; ++o) {
                        var p = i[o].data;
                        e.isArray(p) && 1 == p.length && (p = p[0]), e.isArray(p) ? !isNaN(parseFloat(p[1])) && isFinite(p[1]) ? p[1] = +p[1] : p[1] = 0 : p = !isNaN(parseFloat(p)) && isFinite(p) ? [1, +p] : [1, 0], i[o].data = [p]
                    }
                    for (o = 0; o < i.length; ++o) s += i[o].data[0][1];
                    for (o = 0; o < i.length; ++o) {
                        (p = i[o].data[0][1]) / s <= r.series.pie.combine.threshold && (t += p, a++, l || (l = i[o].color))
                    }
                    for (o = 0; o < i.length; ++o) {
                        p = i[o].data[0][1];
                        (a < 2 || p / s > r.series.pie.combine.threshold) && n.push(e.extend(i[o], {
                            data: [
                                [1, p]
                            ],
                            color: i[o].color,
                            label: i[o].label,
                            angle: p * Math.PI * 2 / s,
                            percent: p / (s / 100)
                        }))
                    }
                    a > 1 && n.push({
                        data: [
                            [1, t]
                        ],
                        color: l,
                        label: r.series.pie.combine.label,
                        angle: t * Math.PI * 2 / s,
                        percent: t / (s / 100)
                    });
                    return n
                }(i.getData())))
            }

            function c(i, s) {
                if (t) {
                    var h = i.getPlaceholder().width(),
                        g = i.getPlaceholder().height(),
                        c = t.children().filter(".legend").children().width() || 0;
                    p = s, o = !1, a = Math.min(h, g / r.series.pie.tilt) / 2, n = g / 2 + r.series.pie.offset.top, l = h / 2, "auto" == r.series.pie.offset.left ? (r.legend.position.match("w") ? l += c / 2 : l -= c / 2, l < a ? l = a : l > h - a && (l = h - a)) : l += r.series.pie.offset.left;
                    var d = i.getData(),
                        f = 0;
                    do {
                        f > 0 && (a *= .95), f += 1, v(), r.series.pie.tilt <= .8 && b()
                    } while (!w() && f < 10);
                    f >= 10 && (v(), t.prepend("<div class='error'>Could not draw pie with labels contained inside canvas</div>")), i.setSeries && i.insertLegend && (i.setSeries(d), i.insertLegend())
                }

                function v() {
                    p.clearRect(0, 0, h, g), t.children().filter(".pieLabel, .pieLabelBackground").remove()
                }

                function b() {
                    var e = r.series.pie.shadow.left,
                        i = r.series.pie.shadow.top,
                        s = r.series.pie.shadow.alpha,
                        t = r.series.pie.radius > 1 ? r.series.pie.radius : a * r.series.pie.radius;
                    if (!(t >= h / 2 - e || t * r.series.pie.tilt >= g / 2 - i || t <= 10)) {
                        p.save(), p.translate(e, i), p.globalAlpha = s, p.fillStyle = "#000", p.translate(l, n), p.scale(1, r.series.pie.tilt);
                        for (var o = 1; o <= 10; o++) p.beginPath(), p.arc(0, 0, t, 0, 2 * Math.PI, !1), p.fill(), t -= o;
                        p.restore()
                    }
                }

                function w() {
                    var i = Math.PI * r.series.pie.startAngle,
                        s = r.series.pie.radius > 1 ? r.series.pie.radius : a * r.series.pie.radius;
                    p.save(), p.translate(l, n), p.scale(1, r.series.pie.tilt), p.save();
                    for (var o = i, c = 0; c < d.length; ++c) d[c].startAngle = o, f(d[c].angle, d[c].color, !0);
                    if (p.restore(), r.series.pie.stroke.width > 0) {
                        p.save(), p.lineWidth = r.series.pie.stroke.width, o = i;
                        for (c = 0; c < d.length; ++c) f(d[c].angle, r.series.pie.stroke.color, !1);
                        p.restore()
                    }
                    return u(p), p.restore(), !r.series.pie.label.show || function() {
                        for (var s = i, o = r.series.pie.label.radius > 1 ? r.series.pie.label.radius : a * r.series.pie.label.radius, p = 0; p < d.length; ++p) {
                            if (d[p].percent >= 100 * r.series.pie.label.threshold && !c(d[p], s, p)) return !1;
                            s += d[p].angle
                        }
                        return !0;

                        function c(i, s, a) {
                            if (0 == i.data[0][1]) return !0;
                            var p, c = r.legend.labelFormatter,
                                u = r.series.pie.label.formatter;
                            p = c ? c(i.label, i) : i.label, u && (p = u(p, i));
                            var d = (s + i.angle + s) / 2,
                                f = l + Math.round(Math.cos(d) * o),
                                v = n + Math.round(Math.sin(d) * o) * r.series.pie.tilt,
                                b = "<span class='pieLabel' id='pieLabel" + a + "' style='position:absolute;top:" + v + "px;left:" + f + "px;'>" + p + "</span>";
                            t.append(b);
                            var w = t.children("#pieLabel" + a),
                                k = v - w.height() / 2,
                                M = f - w.width() / 2;
                            if (w.css("top", k), w.css("left", M), 0 - k > 0 || 0 - M > 0 || g - (k + w.height()) < 0 || h - (M + w.width()) < 0) return !1;
                            if (0 != r.series.pie.label.background.opacity) {
                                var P = r.series.pie.label.background.color;
                                null == P && (P = i.color);
                                var A = "top:" + k + "px;left:" + M + "px;";
                                e("<div class='pieLabelBackground' style='position:absolute;width:" + w.width() + "px;height:" + w.height() + "px;" + A + "background-color:" + P + ";'></div>").css("opacity", r.series.pie.label.background.opacity).insertBefore(w)
                            }
                            return !0
                        }
                    }();

                    function f(e, i, t) {
                        e <= 0 || isNaN(e) || (t ? p.fillStyle = i : (p.strokeStyle = i, p.lineJoin = "round"), p.beginPath(), Math.abs(e - 2 * Math.PI) > 1e-9 && p.moveTo(0, 0), p.arc(0, 0, s, o, o + e / 2, !1), p.arc(0, 0, s, o + e / 2, o + e, !1), p.closePath(), o += e, t ? p.fill() : p.stroke())
                    }
                }
            }

            function u(e) {
                if (r.series.pie.innerRadius > 0) {
                    e.save();
                    var i = r.series.pie.innerRadius > 1 ? r.series.pie.innerRadius : a * r.series.pie.innerRadius;
                    e.globalCompositeOperation = "destination-out", e.beginPath(), e.fillStyle = r.series.pie.stroke.color, e.arc(0, 0, i, 0, 2 * Math.PI, !1), e.fill(), e.closePath(), e.restore(), e.save(), e.beginPath(), e.strokeStyle = r.series.pie.stroke.color, e.arc(0, 0, i, 0, 2 * Math.PI, !1), e.stroke(), e.closePath(), e.restore()
                }
            }

            function d(e, i) {
                for (var s = !1, t = -1, r = e.length, a = r - 1; ++t < r; a = t)(e[t][1] <= i[1] && i[1] < e[a][1] || e[a][1] <= i[1] && i[1] < e[t][1]) && i[0] < (e[a][0] - e[t][0]) * (i[1] - e[t][1]) / (e[a][1] - e[t][1]) + e[t][0] && (s = !s);
                return s
            }

            function f(e) {
                b("plothover", e)
            }

            function v(e) {
                b("plotclick", e)
            }

            function b(e, s) {
                var o = i.offset(),
                    g = function(e, s) {
                        for (var t, r, o = i.getData(), h = i.getOptions(), g = h.series.pie.radius > 1 ? h.series.pie.radius : a * h.series.pie.radius, c = 0; c < o.length; ++c) {
                            var u = o[c];
                            if (u.pie.show) {
                                if (p.save(), p.beginPath(), p.moveTo(0, 0), p.arc(0, 0, g, u.startAngle, u.startAngle + u.angle / 2, !1), p.arc(0, 0, g, u.startAngle + u.angle / 2, u.startAngle + u.angle, !1), p.closePath(), t = e - l, r = s - n, p.isPointInPath) {
                                    if (p.isPointInPath(e - l, s - n)) return p.restore(), {
                                        datapoint: [u.percent, u.data],
                                        dataIndex: 0,
                                        series: u,
                                        seriesIndex: c
                                    }
                                } else if (d([
                                        [0, 0],
                                        [g * Math.cos(u.startAngle), g * Math.sin(u.startAngle)],
                                        [g * Math.cos(u.startAngle + u.angle / 4), g * Math.sin(u.startAngle + u.angle / 4)],
                                        [g * Math.cos(u.startAngle + u.angle / 2), g * Math.sin(u.startAngle + u.angle / 2)],
                                        [g * Math.cos(u.startAngle + u.angle / 1.5), g * Math.sin(u.startAngle + u.angle / 1.5)],
                                        [g * Math.cos(u.startAngle + u.angle), g * Math.sin(u.startAngle + u.angle)]
                                    ], [t, r])) return p.restore(), {
                                    datapoint: [u.percent, u.data],
                                    dataIndex: 0,
                                    series: u,
                                    seriesIndex: c
                                };
                                p.restore()
                            }
                        }
                        return null
                    }(parseInt(s.pageX - o.left), parseInt(s.pageY - o.top));
                if (r.grid.autoHighlight)
                    for (var c = 0; c < h.length; ++c) {
                        var u = h[c];
                        u.auto != e || g && u.series == g.series || w(u.series)
                    }
                g && function(e, s) {
                    var t = k(e); - 1 == t ? (h.push({
                        series: e,
                        auto: s
                    }), i.triggerRedrawOverlay()) : s || (h[t].auto = !1)
                }(g.series, e);
                var f = {
                    pageX: s.pageX,
                    pageY: s.pageY
                };
                t.trigger(e, [f, g])
            }

            function w(e) {
                null == e && (h = [], i.triggerRedrawOverlay());
                var s = k(e); - 1 != s && (h.splice(s, 1), i.triggerRedrawOverlay())
            }

            function k(e) {
                for (var i = 0; i < h.length; ++i) {
                    if (h[i].series == e) return i
                }
                return -1
            }
            i.hooks.processOptions.push((function(e, i) {
                i.series.pie.show && (i.grid.show = !1, "auto" == i.series.pie.label.show && (i.legend.show ? i.series.pie.label.show = !1 : i.series.pie.label.show = !0), "auto" == i.series.pie.radius && (i.series.pie.label.show ? i.series.pie.radius = 3 / 4 : i.series.pie.radius = 1), i.series.pie.tilt > 1 ? i.series.pie.tilt = 1 : i.series.pie.tilt < 0 && (i.series.pie.tilt = 0))
            })), i.hooks.bindEvents.push((function(e, i) {
                var s = e.getOptions();
                s.series.pie.show && (s.grid.hoverable && i.unbind("mousemove").mousemove(f), s.grid.clickable && i.unbind("click").click(v))
            })), i.hooks.processDatapoints.push((function(e, i, s, t) {
                e.getOptions().series.pie.show && g(e, i, s)
            })), i.hooks.drawOverlay.push((function(e, i) {
                e.getOptions().series.pie.show && function(e, i) {
                    var s = e.getOptions(),
                        t = s.series.pie.radius > 1 ? s.series.pie.radius : a * s.series.pie.radius;
                    i.save(), i.translate(l, n), i.scale(1, s.series.pie.tilt);
                    for (var r = 0; r < h.length; ++r) o(h[r].series);

                    function o(e) {
                        e.angle <= 0 || isNaN(e.angle) || (i.fillStyle = "rgba(255, 255, 255, " + s.series.pie.highlight.opacity + ")", i.beginPath(), Math.abs(e.angle - 2 * Math.PI) > 1e-9 && i.moveTo(0, 0), i.arc(0, 0, t, e.startAngle, e.startAngle + e.angle / 2, !1), i.arc(0, 0, t, e.startAngle + e.angle / 2, e.startAngle + e.angle, !1), i.closePath(), i.fill())
                    }
                    u(i), i.restore()
                }(e, i)
            })), i.hooks.draw.push((function(e, i) {
                e.getOptions().series.pie.show && c(e, i)
            }))
        },
        options: i,
        name: "pie",
        version: "1.1"
    })
}(jQuery);
//# sourceMappingURL=/sm/6ad949ee4a85f26086081c52e8aac0cfcb320f5c35ce358d070d1eb413af3cfd.map